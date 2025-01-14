export AR, Autoregressive, ARsafe, ARunsafe, ARMeta

import StatsFuns: log2π

struct AR end

const Autoregressive = AR

struct ARsafe end
struct ARunsafe end

struct ARMeta{F <: VariateForm, S}
    order :: Int
    stype :: S
end

function ARMeta(::Type{ Univariate }, order, stype::S) where S
    order === 1 || @warn "ARMeta{Univariate} has been created with order equals to $(order). Order has been forced to be equal to 1."
    return ARMeta{Univariate, S}(1, stype)
end

function ARMeta(::Type{Multivariate}, order, stype::S) where S
    return ARMeta{Multivariate, S}(order, stype)
end

getvform(meta::ARMeta{F}) where { F } = F
getorder(meta::ARMeta)                = meta.order
getstype(meta::ARMeta)                = meta.stype

is_multivariate(meta::ARMeta) = getvform(meta) === Multivariate
is_univariate(meta::ARMeta)   = getvform(meta) === Univariate

is_safe(meta::ARMeta)   = getstype(meta) === ARsafe()
is_unsafe(meta::ARMeta) = getstype(meta) === ARunsafe()

@node AR Stochastic [ y, x, θ, γ ]

default_meta(::Type{ AR }) = error("Autoregressive node requires meta flag explicitly specified")

@average_energy AR (q_y_x::MultivariateNormalDistributionsFamily, q_θ::NormalDistributionsFamily, q_γ::GammaShapeRate, meta::ARMeta) = begin
    mθ, Vθ   = mean(q_θ), cov(q_θ)
    myx, Vyx = mean(q_y_x), cov(q_y_x)
    mγ       = mean(q_γ)

    order = getorder(meta)

    mx, Vx   = ar_slice(getvform(meta), myx, order+1:2order), ar_slice(getvform(meta), Vyx, order+1:2order, order+1:2order)
    my1, Vy1 = first(myx), first(Vyx)
    Vy1x     = ar_slice(getvform(meta), Vyx, 1, order+1:2order)

    AE = -0.5*(logmean(q_γ)) + 0.5log2π + 0.5*mγ*(Vy1+my1^2 - 2*mθ'*(Vy1x + mx*my1) + tr(Vθ*Vx) + mx'*Vθ*mx + mθ'*(Vx + mx*mx')*mθ)

    # correction
    if is_multivariate(meta)
        AE += entropy(q_y_x)
        idc = [1, order+1:2order...]
        myx_n = myx[idc]
        Vyx_n = Vyx[idc, idc]
        q_y_x = MvNormalMeanCovariance(myx_n, Vyx_n)
        AE -= entropy(q_y_x)
    end

    return AE
end

# Helpers for AR rules

"""
    ar_slice(::T, array, ranges...)

Returns `array[ranges...]` in case if T is Multivariate, and `first(array[ranges...])` in case if T is Univariate
"""
function ar_slice end

function ar_slice(::Type{Multivariate}, array, ranges...)
    return array[ranges...]
end

function ar_slice(::Type{Univariate}, array, ranges...)
    return first(array[ranges...])
end

"""
ar_uvector(::T, order)

Returns `[ 1.0, 0.0 ... 0.0 ]` with length equal to order in case if T is Multivariate, and `1.0` in case if T is Univariate
"""
function ar_unit end

function ar_unit(::Type{Multivariate}, order)
    c    = zeros(order)
    c[1] = 1.0
    return c
end

function ar_unit(::Type{Univariate}, order)
    return 1.0
end

function ar_precision(::Type{Multivariate}, order, γ)
    mw               = zeros(order, order)
    mw[diagind(mw)] .= huge
    mw[1, 1]         = γ
    return mw
end

function ar_precision(::Type{Univariate}, order, γ) 
    return γ
end

function ar_transition(::Type{Multivariate}, order, γ)
    V = zeros(order, order)
    V[1] = 1/γ
    return V
end

function ar_transition(::Type{Univariate}, order, γ) 
    return inv(γ)
end
