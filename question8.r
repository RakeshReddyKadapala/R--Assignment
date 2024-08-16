x <- 15
y <- 20

# Use a temporary variable to store the value of x
temp <- x
x <- y
y <- temp

# Print the interchanged values
print(paste("x:", x))
print(paste("y:", y))
