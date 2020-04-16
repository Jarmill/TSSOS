using TSSOS
using DataFrames

n = 4
nb= 2
d = 4
basis = get_basis(n, d)


basis_bin = basis[1:nb, :]

basis_valid = all.(x-> x<=1, Base.eachcol(basis_bin))
basis_out = basis[:, basis_valid]

e
