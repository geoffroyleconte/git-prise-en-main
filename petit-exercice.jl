using LinearAlgebra

A = rand(100,100) # création de la matrice A
b = rand(100) #création du vecteur B

# 1) résoudre Ax = b 


### votre code ici
x=A\b
r=A*x-b
Ar=A*r
c=cond(A)
###
# vérification
using Test
@test norm(r)/norm(x) ≤ c*norm(Ar)/norm(b)