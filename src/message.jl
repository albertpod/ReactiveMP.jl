using Rx

export AbstractMessage
export DeterministicMessage, StochasticMessage
export multiply
export *

import Base: *

abstract type AbstractMessage end

struct DeterministicMessage <: AbstractMessage
    value :: Float64
end

struct StochasticMessage{ D } <: AbstractMessage
    distribution :: D
end

function multiply(d1::DeterministicMessage, d2::DeterministicMessage)::DeterministicMessage
    if abs(d1.value - d2.value) < eps(Float64)
        return DeterministicMessage(d1.value)
    end
    return DeterministicMessage(zero(Float64))
end

function multiply(n1::StochasticMessage{D}, n2::StochasticMessage{D})::StochasticMessage{Normal} where { D <: Normal }
    mean1 = mean(n1)
    mean2 = mean(n2)

    var1 = var(n1)
    var2 = var(n2)

    result = Normal((mean1 * var2 + mean2 * var1) / (var2 + var1), sqrt((var1 * var2) / (var1 + var2)))

    return StochasticMessage{Normal}(result)
end

multiply(m1::AbstractMessage, m2::AbstractMessage) = error("Message multiplication for types $(typeof(m1)) and $(typeof(m2)) is not implemented")

Base.:*(m1::AbstractMessage, m2::AbstractMessage) = multiply(m1, m2)