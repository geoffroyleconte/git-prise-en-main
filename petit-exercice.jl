using LinearAlgebra

A = [1.0 2.0 3.0;
    2.0 -5.0 3.0
    3.0 3.5 -4.0]
b = ones(3)

# 1) résoudre Ax = b 

### votre code ici
 # PA = LU
 # LUx = Pb
 # Ly = Pb
 # Ux = y
 using LinearAlgebra
 L,U,p = lu(A); 
 luA = lu(A);          
 x = luA\F;
 
# x = ...
###

# vérification
# si besoin installer le module Test avec:
# ]add Test 
using Test
@test norm(A * x - b) ≤ sqrt(eps())
