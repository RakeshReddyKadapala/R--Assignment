# 1D Array
arr1D <- c(3, 7, 2, 9, 1, 5)

# Find the mean and median of the array
mean1D <- mean(arr1D)
median1D <- median(arr1D)

# Print the mean and median
print(paste("Mean of 1D array:", mean1D))
print(paste("Median of 1D array:", median1D))

# 2D Array
arr2D <- matrix(c(3, 7, 2, 9, 1, 5, 4, 6, 8), nrow = 3, ncol = 3)

# Find the mean and median of the array
mean2D <- apply(arr2D, 2, mean)
median2D <- apply(arr2D, 2, median)

# Print the mean and median of 2D array
print("Mean of 2D array:")
print(mean2D)
print("Median of 2D array:")
print(median2D)

