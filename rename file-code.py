ques=dict()
ques["question1.r"]="""nums <- c(15, 16, 17, 18)
sum <- sum(nums)
avg <- sum/length(nums) 
print(paste("Sum:", sum, "Average:", avg)) 
"""
ques["question2.r"]="""# taking the sides of the triangle
a <-5
b <- 4
c <- 3

# Calculate the semi-perimeter of the triangle
s <- (a + b + c) / 2

# Use Heron's formula to calculate the area
area <- sqrt(s*(s-a)*(s-b)*(s-c))

# Print the area
print(paste("The area of the triangle is:", area))
"""
ques["question3.r"]="""# taking the coefficients of the quadratic equation
# coefficient of x^2
a <- 2
# coeffiecient of x
b <- 1
# constant term
c <-5

# Use the quadratic formula to calculate the roots
root1 <- (-b + sqrt(b^2 - 4*a*c))/(2*a)
root2 <- (-b - sqrt(b^2 - 4*a*c))/(2*a)

# Print the roots
print(paste("The roots of the equation are:", root1, "and", root2))
"""
ques["question4.r"]="""# Function to check if a number is prime
is_prime <- function(n) {
    if (n <= 1) {
        return(FALSE)
    } else if (n <= 3) {
        return(TRUE)
    } else if (n %% 2 == 0 || n %% 3 == 0) {
        return(FALSE)
    }
    i <- 5
    while (i*i <= n) {
        if (n %% i == 0 || n %% (i + 2) == 0) {
            return(FALSE)
        }
        i <- i + 6
    }
    return(TRUE)
}

# Get input for the number
n <- 5

# Check if the number is prime
if (is_prime(n)) {
    print(paste(n, "is a prime number"))
} else {
    print(paste(n, "is not a prime number"))
}

# Generate the first 50 prime numbers
primes <- c()
i <- 2
while (length(primes) < 50) {
    if (is_prime(i)) {
        primes <- c(primes, i)
    }
    i <- i + 1
}
print(paste("The first 50 prime numbers are:", primes))
"""
ques["question5.r"]=""" # putting the value of n
 n = 15652
    rev = 0
 
    while (n > 0) {
      r = n %% 10
      rev = rev * 10 + r
      n = n %/% 10
    }
 
    print(paste("Reverse number is :", rev))
"""
ques["question7.r"]="""n <- 222
num<-n  
rev<-0  
while(n!=0){  
    rem<-n%%10  
    rev<-rem+(rev*10)  
    n<-as.integer(n/10)  
}  
print(rev)  
if(rev==num){  
    cat(num,"is a palindrome num")  
}else{  
    cat(num,"is not a palindrome number")  
}  
"""
ques["question8.r"]="""x <- 15
y <- 20

# Use a temporary variable to store the value of x
temp <- x
x <- y
y <- temp

# Print the interchanged values
print(paste("x:", x))
print(paste("y:", y))
"""
ques["question6.r"]="""n = 205
    s = 0
    while (n > 0) {
      r = n %% 10
      s = s + r
      n = n %/% 10
    }
    print(paste("Sum of the digits is :", s))
"""
ques["question9.r"]="""# 1D Array
arr1D <- c(3, 7, 2, 9, 1, 5)

# Find the minimum and maximum of the array
min1D <- min(arr1D)
max1D <- max(arr1D)

# Print the minimum and maximum
print(paste("Minimum of 1D array:", min1D))
print(paste("Maximum of 1D array:", max1D))

# 2D Array
arr2D <- matrix(c(3, 7, 2, 9, 1, 5, 4, 6, 8), nrow = 3, ncol = 3)

# Find the minimum and maximum of the array
min2D <- min(arr2D)
max2D <- max(arr2D)

# Print the minimum and maximum
print(paste("Minimum of 2D array:", min2D))
print(paste("Maximum of 2D array:", max2D))

"""
ques["question10.r"]="""# 1D Array
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

"""
ques["question11.r"]="""# Function to generate Fibonacci series
fibonacci <- function(n) {
  if (n == 0) {
    return(0)
  } else if (n == 1) {
    return(1)
  } else {
    return(fibonacci(n-1) + fibonacci(n-2))
  }
}

# Function to print n elements of the Fibonacci series
print_fibonacci <- function(n) {
  for (i in 1:n) {
    print(fibonacci(i))
  }
}

# Input number of elements to be printed
n <- 10

# Print the first n elements of Fibonacci series
print_fibonacci(n)
"""
ques["question12.r"]="""# Construct matrices
mat1 <- matrix(c(1,2,3,4), nrow = 2, ncol = 2)
mat2 <- matrix(c(5,6,7,8), nrow = 2, ncol = 2)

# Matrix addition
result_add <- mat1 + mat2
print(result_add)

# Matrix multiplication
result_mult <- mat1 %*% mat2
print(result_mult)
"""
for i in ques.keys():
    with open(i,'w') as f:
        f.write(ques[i])