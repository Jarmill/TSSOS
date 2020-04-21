using Revise
using TSSOS
using DynamicPolynomials
# using SparseArrays

# @polyvar x[1:2]
# f=x[1]^4+x[2]^4-x[1]*x[2]
# g_1=2-x[1]^2-2*x[2]^2
# g_2=x[1]^2-x[2]^2-1
# pop=[f,g_1,g_2]
# d=2 # the order of Lasserre's hierarchy
# opt,sol,data= blockcpop_first(pop,x,d,numeq=1,solve=true,solution=true)

# @polyvar x[1:2]
# f=x[1]^4+x[2]^4-x[1]*x[2]
# g_1=2-x[1]^2-2*x[2]^2
# g_2=x[1]^2-x[2]^2-1
# pop=[f,g_1,g_2]
# d=2 # the order of Lasserre's hierarchy
#opt,sol,data= blockcpop_first(pop,x,d,numeq=1,solve=true,solution=false,export_pop="limited")

@polyvar x[1:2]
d=2
f = x[1]^4 + 2*x[1]*x[2]+ x[2]^2 + x[1]^2 + (x[1]-2)^2 + (x[2]+3)^2
opt,sol,data=blockupop_first(f, x, solve=true, solution=true)
