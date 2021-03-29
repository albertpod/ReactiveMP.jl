export GammaShapeRate

import Distributions: Gamma, shape, rate
import SpecialFunctions: loggamma, digamma, gamma
import StatsFuns: log2π

struct GammaShapeRate{T <: Real} <: ContinuousUnivariateDistribution
    a :: T
    b :: T
end

GammaShapeRate(a::Real, b::Real)       = GammaShapeRate(promote(a, b)...)
GammaShapeRate(a::Integer, b::Integer) = GammaShapeRate(float(a), float(b))
GammaShapeRate(a::Real)                = GammaShapeRate(a, one(a))
GammaShapeRate()                       = GammaShapeRate(1.0, 1.0)

Distributions.shape(dist::GammaShapeRate)  = dist.a
Distributions.rate(dist::GammaShapeRate)   = dist.b
Distributions.scale(dist::GammaShapeRate)  = inv(dist.b)
Distributions.mean(dist::GammaShapeRate)   = shape(dist) / rate(dist)
Distributions.var(dist::GammaShapeRate)    = shape(dist) / abs2(rate(dist))
Distributions.params(dist::GammaShapeRate) = (shape(dist), rate(dist))

function Distributions.entropy(dist::GammaShapeRate)
    a, b = params(dist)
    return a - log(b) + loggamma(a) + (1-a)*digamma(a)
end

function logmean(dist::GammaShapeRate)
    a, b = params(dist)
    return digamma(a) - log(b)
end

function loggammamean(dist::GammaShapeRate)
    a, b = params(dist)
    return 0.5 * (log2π - (digamma(a) - log(b))) + mean(dist) * (1 + digamma(a + 1) - log(b))
end

function meanlogmean(dist::GammaShapeRate)
    a, b = params(dist)
    return mean(dist) * (digamma(a + 1) - log(b))
end

Base.eltype(::GammaShapeRate{T}) where T = T

Base.convert(::Type{ GammaShapeRate{T} }, a::Real, b::Real) where { T <: Real } = GammaShapeRate(convert(T, a), convert(T, b))

vague(::Type{ <: GammaShapeRate }) = GammaShapeRate(1.0, tiny)

function prod(::ProdPreserveParametrisation, left::GammaShapeRate{T}, right::GammaShapeRate{T}) where T
    return GammaShapeRate(shape(left) + shape(right) - one(T), rate(left) + rate(right))
end

Distributions.pdf(dist::GammaShapeRate, x::Real)    = (rate(dist)^shape(dist)) / gamma(shape(dist)) * x^(shape(dist)-1)*exp(-rate(dist) * x)
Distributions.logpdf(dist::GammaShapeRate, x::Real) = shape(dist) * log(rate(dist)) - loggamma(shape(dist)) + (shape(dist)-1)*log(x) - rate(dist)*x