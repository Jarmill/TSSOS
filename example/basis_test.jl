using TSSOS

function bin_add(bi, bj, n_binary)
    "multiply two monomials together, where the first n_binary variables are binary"
    bs = bi + bj
    bs[1:n_binary] = any.(x->x>0 , bs[1:n_binary])
    return bs
end

n = 4
nb= 2
d = 4
basis = get_basis(n, d)


basis_bin = basis[1:nb, :]

basis_valid = all.(x-> x<=1, Base.eachcol(basis_bin))
basis_out = basis[:, basis_valid]

bi = basis_out[:, 6]
bj = basis_out[:, 37]
bs = bi + bj

bnew = bin_add(bi, bj, nb)
