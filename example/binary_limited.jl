using Revise
using TSSOS
using DynamicPolynomials

@polyvar s[1:3]
d=4
f = 2*s[1] - s[2] - s[2]*s[3] -s[1]*s[3]
#true solution s*=(0, 1, 1), f*=-2

#f = x[1]^4 + 2*x[1]*x[2]+ x[2]^2 + x[1]^2 + (x[1]-2)^2 + (x[2]+3)^2
opt,sol,data=blockupop_first(f, s, d=d, newton=0, solve=true, solution=false, nb=3)
