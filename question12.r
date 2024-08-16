# Construct matrices
mat1 <- matrix(c(1,2,3,4), nrow = 2, ncol = 2)
mat2 <- matrix(c(5,6,7,8), nrow = 2, ncol = 2)

# Matrix addition
result_add <- mat1 + mat2
print(result_add)

# Matrix multiplication
result_mult <- mat1 %*% mat2
print(result_mult)
