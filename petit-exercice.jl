using LinearAlgebra

# 1 resolution systeme
using LinearAlgebra
A = rand(100,100)
b = rand(Int64,(100,1))
x =inv(A)*b

# 2 Calcul de r,Ar, cond(A)
r =(A*x)-b
erreur=A*r
conditionnement=cond(A)

# 3 verifier condition
norme1=norm(r)/norm(x)
norme2=norm(A*r)/norm(b)
using Test
 @test norme1<=conditionnement*norme2
