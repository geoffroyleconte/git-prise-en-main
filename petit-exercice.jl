using LinearAlgebra, Test

A = [1.0 2.0 3.0;
    2.0 -5.0 3.0
    3.0 3.5 -4.0]
b = ones(3)

# On résout le système Ax = b
x = A\b

@test norm(A * x - b) ≤ sqrt(eps())