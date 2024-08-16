# taking the sides of the triangle
a <-5
b <- 4
c <- 3

# Calculate the semi-perimeter of the triangle
s <- (a + b + c) / 2

# Use Heron's formula to calculate the area
area <- sqrt(s*(s-a)*(s-b)*(s-c))

# Print the area
print(paste("The area of the triangle is:", area))
