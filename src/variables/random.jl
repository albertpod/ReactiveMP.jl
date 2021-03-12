export randomvar, simplerandomvar
export FoldLeftProdStrategy, FoldRightProdStrategy, AllAtOnceProdStrategy
export NoCacheStrategy, EqualityChainCacheStrategy

# Messages to Marginal product strategies

struct FoldLeftProdStrategy end
struct FoldRightProdStrategy end

# Fallbacks to FoldLeftProdStrategy in case if there is no suitable method
struct AllAtOnceProdStrategy end

strategy_fn(::FoldLeftProdStrategy)  = foldl_reduce_to_marginal
strategy_fn(::FoldRightProdStrategy) = foldr_reduce_to_marginal
strategy_fn(::AllAtOnceProdStrategy) = all_reduce_to_marginal

default_prod_strategy()  = FoldLeftProdStrategy()
default_cache_strategy() = NoCacheStrategy()

## Random variable props

mutable struct RandomVariableProps
    marginal :: Union{Nothing, MarginalObservable}
    portal   :: AbstractPortal 

    RandomVariableProps() = new(nothing, EmptyPortal())
end

## Random variable implementation

struct RandomVariable{S, C} <: AbstractVariable
    name           :: Symbol
    inputmsgs      :: Vector{LazyObservable{AbstractMessage}}
    props          :: RandomVariableProps
    prod_strategy  :: S
    cache_strategy :: C
end

function randomvar(name::Symbol; prod_strategy = default_prod_strategy(), cache_strategy = default_cache_strategy()) 
    return RandomVariable(name, Vector{LazyObservable{AbstractMessage}}(), RandomVariableProps(), prod_strategy, cache_strategy)
end

function randomvar(name::Symbol, dims::Tuple; prod_strategy = default_prod_strategy(), cache_strategy = default_cache_strategy())
    return randomvar(name, dims...; prod_strategy = prod_strategy, cache_strategy = cache_strategy)
end

function randomvar(name::Symbol, dims::Vararg{Int}; prod_strategy = default_prod_strategy(), cache_strategy = default_cache_strategy())
    vars = Array{RandomVariable}(undef, dims)
    for index in CartesianIndices(axes(vars))
        @inbounds vars[index] = randomvar(Symbol(name, :_, Symbol(join(index.I, :_))); prod_strategy = prod_strategy, cache_strategy = cache_strategy)
    end
    return vars
end

degree(randomvar::RandomVariable)         = length(randomvar.inputmsgs)
prod_strategy(randomvar::RandomVariable)  = randomvar.prod_strategy
cache_strategy(randomvar::RandomVariable) = randomvar.cache_strategy

getlastindex(randomvar::RandomVariable) = length(randomvar.inputmsgs) + 1

messagein(randomvar::RandomVariable, index::Int)  = @inbounds randomvar.inputmsgs[index]
messageout(randomvar::RandomVariable, index::Int) = messageout(cache_strategy(randomvar), randomvar, index)

# No Cache for outbound messages strategy

struct NoCacheStrategy end

function messageout(::NoCacheStrategy, randomvar::RandomVariable, index::Int) 
    return collectLatest(AbstractMessage, Message, skipindex(randomvar.inputmsgs, index), reduce_messages)
end

function _makemarginal(::NoCacheStrategy, randomvar::RandomVariable) 
    return collectLatest(AbstractMessage, Marginal, randomvar.inputmsgs, strategy_fn(prod_strategy(randomvar)))
end

# Equality chain outbound messages strategy 

struct EqualityNode
    left   :: LazyObservable{ AbstractMessage }
    right  :: LazyObservable{ AbstractMessage }
    bottom :: LazyObservable{ AbstractMessage }
end

EqualityNode() = EqualityNode(lazy(AbstractMessage), lazy(AbstractMessage), lazy(AbstractMessage))

m_left(eqnode::EqualityNode)   = eqnode.left
m_right(eqnode::EqualityNode)  = eqnode.right
m_bottom(eqnode::EqualityNode) = eqnode.bottom

struct EqualityChainCacheStrategy 
    eq_nodes :: Vector{ EqualityNode }
end

EqualityChainCacheStrategy() = EqualityChainCacheStrategy(Vector{EqualityNode}())

is_initialized(cache::EqualityChainCacheStrategy) = length(cache.eq_nodes) > 0

m_left(cache::EqualityChainCacheStrategy, index)   = m_left(cache.eq_nodes[index])
m_right(cache::EqualityChainCacheStrategy, index)  = m_right(cache.eq_nodes[index])
m_bottom(cache::EqualityChainCacheStrategy, index) = m_bottom(cache.eq_nodes[index])

set_m_left!(cache::EqualityChainCacheStrategy, index, observable)   = set!(m_left(cache, index), observable |> share_recent())
set_m_right!(cache::EqualityChainCacheStrategy, index, observable)  = set!(m_right(cache, index), observable |> share_recent())
set_m_bottom!(cache::EqualityChainCacheStrategy, index, observable) = set!(m_bottom(cache, index), observable |> share_recent())

output_eq(stream1, stream2) = combineLatest((stream1, stream2), PushNew()) |> map(AbstractMessage, (v) -> as_message(v[1]) * as_message(v[2]))

function initialize!(cache::EqualityChainCacheStrategy, randomvar::RandomVariable)
    nconnections = degree(randomvar)

    @assert nconnections >= 5 "EqualityChainCacheStrategy can be used only if variable has been connected to more than 5 nodes"

    resize!(cache.eq_nodes, nconnections - 2)

    for i in 1:nconnections - 2
        cache.eq_nodes[i] = EqualityNode()
    end

    # First Equality node
    set_m_left!(cache, 1, output_eq(messagein(randomvar, 2), m_left(cache, 2)))
    set_m_right!(cache, 1, output_eq(messagein(randomvar, 1), messagein(randomvar, 2)))
    set_m_bottom!(cache, 1, output_eq(messagein(randomvar, 1), m_left(cache, 2)))

    for i in 2:length(cache.eq_nodes) - 1
        set_m_left!(cache, i, output_eq(messagein(randomvar, i + 1), m_left(cache, i + 1)))
        set_m_right!(cache, i, output_eq(messagein(randomvar, i + 1), m_right(cache, i - 1)))
        set_m_bottom!(cache, i, output_eq(m_right(cache, i - 1), m_left(cache, i + 1)))
    end

    # Last Equality node
    set_m_left!(cache, nconnections - 2, output_eq(messagein(randomvar, nconnections), messagein(randomvar, nconnections - 1)))
    set_m_right!(cache, nconnections - 2, output_eq(m_right(cache, nconnections - 3), messagein(randomvar, nconnections - 1)))
    set_m_bottom!(cache, nconnections - 2, output_eq(m_right(cache, nconnections - 3), messagein(randomvar, nconnections)))
end

function messageout(cache::EqualityChainCacheStrategy, randomvar::RandomVariable, index::Int)
    if !(is_initialized(cache))
        initialize!(cache, randomvar)
    end

    if index === 1
        return m_left(cache, 1)
    elseif index === degree(randomvar)
        return m_right(cache, index - 2)
    else
        return m_bottom(cache, index - 1)
    end
end

function _makemarginal(cache::EqualityChainCacheStrategy, randomvar::RandomVariable) 
    return _makemarginal(prod_strategy(randomvar), cache, randomvar)
end

function _makemarginal(::FoldLeftProdStrategy, cache::EqualityChainCacheStrategy, randomvar::RandomVariable)
    return combineLatest((m_right(cache, degree(randomvar) - 2), messagein(randomvar, degree(randomvar))), PushNew()) |> map(Marginal, (v) -> as_marginal(as_message(v[1]) * as_message(v[2])))
end

function _makemarginal(::FoldRightProdStrategy, cache::EqualityChainCacheStrategy, randomvar::RandomVariable)
    return combineLatest((messagein(randomvar, 1), m_left(cache, 1)), PushNew()) |> map(Marginal, (v) -> as_marginal(as_message(v[1]) * as_message(v[2])))
end

function _makemarginal(::AllAtOnceProdStrategy, cache::EqualityChainCacheStrategy, randomvar::RandomVariable)
    error("Error for variable $(randomvar.name): AllAtOnceProdStrategy is incompatible with EqualityChainCacheStrategy")
end

##

inbound_portal(randomvar::RandomVariable)          = randomvar.props.portal
inbound_portal!(randomvar::RandomVariable, portal) = randomvar.props.portal = portal

_getmarginal(randomvar::RandomVariable)                                = randomvar.props.marginal
_setmarginal!(randomvar::RandomVariable, marginal::MarginalObservable) = randomvar.props.marginal = marginal
_makemarginal(randomvar::RandomVariable)                               = _makemarginal(cache_strategy(randomvar), randomvar)

function setmessagein!(randomvar::RandomVariable, index::Int, messagein)
    if index === length(randomvar.inputmsgs) + 1
        push!(randomvar.inputmsgs, messagein)
    else
        throw("TODO error message: setmessagein! in ::RandomVariable")
    end
end