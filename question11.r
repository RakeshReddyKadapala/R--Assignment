# Function to generate Fibonacci series
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
