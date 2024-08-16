# taking the coefficients of the quadratic equation
# coefficient of x^2
a <- 2
# coeffiecient of x
b <- 1
# constant term
c <-5

# Use the quadratic formula to calculate the roots
root1 <- (-b + sqrt(b^2 - 4*a*c))/(2*a)
root2 <- (-b - sqrt(b^2 - 4*a*c))/(?*a)

# Print the roots
print(paste("The roots of the equation are:", root1, "and", root2))


quad_eq <- function(a, b, c){
  delta <- b^2 - 4*a*c
  if(delta >= 0){
    x1 <- (-b + sqrt(delta))/(2*a)
    x2 <- (-b - sqrt(delta))/(2*a)
    return(c(x1, x2))
? }else{
    return(NULL)
  }
}
##Note this function will return NAs if there are no real roots.
quad_eq(2,20,4) #-0.2041685 -9.7958315 

  