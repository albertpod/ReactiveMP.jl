module BetaTest

using Test
using ReactiveMP
using Distributions
using Random

import DomainSets

@testset "Generic Functional Distributions" begin

    @testset "ContinuousUnivariateLogPdf" begin
        
        @testset "Constructor" begin 
            f  = (x) -> -x ^ 2
            d1 = ContinuousUnivariateLogPdf(f)
            d2 = ContinuousUnivariateLogPdf(DomainSets.FullSpace(), f)

            @test typeof(d1) === typeof(d2)
            @test d1 ≈ d2
        end

        @testset "pdf/logpdf" begin 
            d1 = ContinuousUnivariateLogPdf(DomainSets.FullSpace(), (x) -> -x ^ 2)
            
            f32_points1 = range(Float32(-10.0), Float32(10.0), length = 50)
            f64_points1 = range(-10.0, 10.0, length = 50)
            bf_points1  = range(BigFloat(-10.0), BigFloat(10.0), length = 50)
            points1 = vcat(f32_points1, f64_points1, bf_points1)

            @test all(map(p -> -p^2 == d1(p), points1))
            @test all(map(p -> -p^2 == logpdf(d1, p), points1))
            @test all(map(p -> exp(-p^2) == pdf(d1, p), points1))
            @test all(map(p -> -p^2 == d1([ p ]), points1))
            @test all(map(p -> -p^2 == logpdf(d1, [ p ]), points1))
            @test all(map(p -> exp(-p^2) == pdf(d1, [ p ]), points1))

            d2 = ContinuousUnivariateLogPdf(DomainSets.HalfLine(), (x) -> -x ^ 4)
            
            f32_points2 = range(Float32(0.0), Float32(10.0), length = 50)
            f64_points2 = range(0.0, 10.0, length = 50)
            bf_points2  = range(BigFloat(0.0), BigFloat(10.0), length = 50)
            points2 = vcat(f32_points2, f64_points2, bf_points2)

            @test all(map(p -> -p^4 == d2(p), points2))
            @test all(map(p -> -p^4 == logpdf(d2, p), points2))
            @test all(map(p -> exp(-p^4) == pdf(d2, p), points2))
            @test all(map(p -> -p^4 == d2([ p ]), points2))
            @test all(map(p -> -p^4 == logpdf(d2, [ p ]), points2))
            @test all(map(p -> exp(-p^4) == pdf(d2, [ p ]), points2))

            @test_throws AssertionError d2(-1.0)
            @test_throws AssertionError logpdf(d2, -1.0)
            @test_throws AssertionError pdf(d2, -1.0)
            @test_throws AssertionError d2([ -1.0 ])
            @test_throws AssertionError logpdf(d2, [ -1.0 ])
            @test_throws AssertionError pdf(d2, [ -1.0 ])

            @test_throws AssertionError d2(Float32(-1.0))
            @test_throws AssertionError logpdf(d2, Float32(-1.0))
            @test_throws AssertionError pdf(d2, Float32(-1.0))
            @test_throws AssertionError d2([ Float32(-1.0) ])
            @test_throws AssertionError logpdf(d2, [ Float32(-1.0) ])
            @test_throws AssertionError pdf(d2, [ Float32(-1.0) ])

            @test_throws AssertionError d2(BigFloat(-1.0))
            @test_throws AssertionError logpdf(d2, BigFloat(-1.0))
            @test_throws AssertionError pdf(d2, BigFloat(-1.0))
            @test_throws AssertionError d2([ BigFloat(-1.0) ])
            @test_throws AssertionError logpdf(d2, [ BigFloat(-1.0) ])
            @test_throws AssertionError pdf(d2, [ BigFloat(-1.0) ])

            d3 = ContinuousUnivariateLogPdf(DomainSets.FullSpace(Float32), (x) -> -x ^ 2)

            @test all(map(p -> -p^2 == d3(p), points1))
            @test all(map(p -> -p^2 == logpdf(d3, p), points1))
            @test all(map(p -> exp(-p^2) == pdf(d3, p), points1))
            @test all(map(p -> -p^2 == d3([ p ]), points1))
            @test all(map(p -> -p^2 == logpdf(d3, [ p ]), points1))
            @test all(map(p -> exp(-p^2) == pdf(d3, [ p ]), points1))

            d4 = ContinuousUnivariateLogPdf(DomainSets.FullSpace(BigFloat), (x) -> -x ^ 2)

            @test all(map(p -> -p^2 == d4(p), points1))
            @test all(map(p -> -p^2 == logpdf(d4, p), points1))
            @test all(map(p -> exp(-p^2) == pdf(d4, p), points1))
            @test all(map(p -> -p^2 == d4([ p ]), points1))
            @test all(map(p -> -p^2 == logpdf(d4, [ p ]), points1))
            @test all(map(p -> exp(-p^2) == pdf(d4, [ p ]), points1))

            d5 = ContinuousUnivariateLogPdf(DomainSets.HalfLine{Float32}(), (x) -> -x ^ 2)

            @test all(map(p -> -p^2 == d5(p), points2))
            @test all(map(p -> -p^2 == logpdf(d5, p), points2))
            @test all(map(p -> exp(-p^2) == pdf(d5, p), points2))
            @test all(map(p -> -p^2 == d5([ p ]), points2))
            @test all(map(p -> -p^2 == logpdf(d5, [ p ]), points2))
            @test all(map(p -> exp(-p^2) == pdf(d5, [ p ]), points2))

            d6 = ContinuousUnivariateLogPdf(DomainSets.HalfLine{BigFloat}(), (x) -> -x ^ 2)

            @test all(map(p -> -p^2 == d6(p), points2))
            @test all(map(p -> -p^2 == logpdf(d6, p), points2))
            @test all(map(p -> exp(-p^2) == pdf(d6, p), points2))
            @test all(map(p -> -p^2 == d6([ p ]), points2))
            @test all(map(p -> -p^2 == logpdf(d6, [ p ]), points2))
            @test all(map(p -> exp(-p^2) == pdf(d6, [ p ]), points2))
        end

        @testset "support" begin 
            d1 = ContinuousUnivariateLogPdf(DomainSets.FullSpace(), (x) -> 1.0)
            @test minimum(support(d1)) === -Inf
            @test maximum(support(d1)) === Inf

            d2 = ContinuousUnivariateLogPdf(DomainSets.HalfLine(), (x) -> 1.0)
            @test minimum(support(d2)) === 0.0
            @test maximum(support(d2)) === Inf
        end

        @testset "vague" begin
            d = vague(ContinuousUnivariateLogPdf)

            @test typeof(d) <: ContinuousUnivariateLogPdf
            @test d ≈ ContinuousUnivariateLogPdf(DomainSets.FullSpace(), (x) -> 1.0)
        end

        @testset "prod" begin
            d1 = ContinuousUnivariateLogPdf(DomainSets.FullSpace(), (x) -> 2.0 * -x ^ 2)
            d2 = ContinuousUnivariateLogPdf(DomainSets.FullSpace(), (x) -> 3.0 * -x ^ 2)

            pr1 = prod(ProdAnalytical(), d1, d2)
            pt1 = ContinuousUnivariateLogPdf(DomainSets.FullSpace(), (x) -> logpdf(d1, x) + logpdf(d2, x))

            @test isapprox(pr1, pt1, atol = 1e-12)

            d3 = ContinuousUnivariateLogPdf(DomainSets.HalfLine(), (x) -> 2.0 * -x ^ 2)
            d4 = ContinuousUnivariateLogPdf(DomainSets.HalfLine(), (x) -> 3.0 * -x ^ 2)

            pr2 = prod(ProdAnalytical(), d3, d4)
            pt2 = ContinuousUnivariateLogPdf(DomainSets.HalfLine(), (x) -> logpdf(d3, x) + logpdf(d4, x))

            @test isapprox(pr2, pt2, atol = 1e-12)

            @test !isapprox(pr1, pr2, atol = 1e-12)
        end

        @testset "convert" begin
            d = DomainSets.FullSpace()
            l = (x) -> 1.0

            c = convert(ContinuousUnivariateLogPdf, d, l)
            @test typeof(c) <: ContinuousUnivariateLogPdf
            @test isapprox(c, ContinuousUnivariateLogPdf(d, l), atol = 1e-12)

            c2 = convert(ContinuousUnivariateLogPdf, c)
            @test typeof(c2) <: ContinuousUnivariateLogPdf
            @test isapprox(c2, ContinuousUnivariateLogPdf(d, l), atol = 1e-12)

        end

    end

end

end
