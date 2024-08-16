# R arithmetic operators.
# +, -, *, /, ^, %% (Modulus), %/% integer division .
# v <- c( 2,5.5,6)
# t <- c(8, 3, 4)
# print(v+t)


d <- c(5,6,7,8,9)
length(d)
class(d)
e <- c( 10,11, 12, 13,18)

print(e-d)
print(e+d)
print(e*d)
print(e/d)
print(e^d)
print(e%%d) ## the result of division such as reminder
print(e%/%d) # the result of divison of second vector with first

# Relational operators
# <, >, <=, >=, ==, !=

a <- c( 2,5,5,6,9)
b <- c(8,2,5,14,9)

print(b>a)

print(b<a)

print(b==a)
print(b<= a)
print(b>=a)
print(b!= a) # not equa to symbol != 


# Logical operator
# ! logical not, & element wise logical AND, | element wise logical OR, 
# && Logical AND, Logical OR

# Operators & and | perform element-wise operation producing result 
# having length of the longer operand.

# But && and || examines only the first element of the operands 
# resulting into a single length logical vector.

# Zero is considered FALSE and non-zero numbers are taken as TRUE. 

 v <- c(TRUE,2+2i,34.5,45,FALSE)
 length(v)
 class(v)
 t <- c(TRUE,2+3i,67.45, 65.43, FALSE)
 length(t)
 print(v&t)
 
 print(v|t)
 
 print(v&&t)
 
 print(v||t)
 
 # Assignment operators
 #(left assignment operator) <- or = or <<- , -> or ->>  ( Right assignment operator)
 
# Functions are set of statements organized together to perform a 
 # specific task. 
 # Inbuilt function of R - mean(), median(), sd(), skewness().
 # kurtosis(), scale(), sequence seq()
# Functions user defined and inbuilt function 
#Data Management using R
# Functions
# Built - In function 
# Create a sequence of numbers from 32 to 44.
# seq( from, to, by =)
print(seq(32,44))

# Create a sequence of numbers between -10 and 10 incrementing by 0.1.

inc1 <- seq(-10,10,by = 2)
inc1

inc <- seq(1, 10, by = 2)
inc


# Find mean of numbers from 25 to 82.
print(mean(25:82))
print(mean(seq(1, 10, by = 2)))

mean(1000:1500)
yyy <-c(45,67,89,333,567)
mean(yyy)


# Find sum of numbers frm 41 to 68.
print(sum(41:68))


# User-defined Function
# Create a function to print squares of numbers in sequence.


function_name <- function(arg_1,arg_2, ){
  body 
}
g <- function(){
  
}
# some custom multiplication 
common <- function(a) 
{
  for(i in a:100) {
    b <- i*3
    print(b)
  }
}	
common(2)

ann <- function(a)
{
  for(i in a:15)
  {
    b=i+6
    print(b)
  }
  
}
ann(5)



# Calling a Function with Argument Values
ne <- function(a,b,c,o) 
{
  result <- (a * b) + c +o
  print(result)
}

ne(10,2,5,6)

# install.packages("readr")
library(readr)
# loading dataset which is a  csv file
df <- read.csv(file.choose())

# checking str and summary of the dataset

str(df)

summary(df)

View(df)

attach(df)

# take two or three copies of my original data frame

df1 <- df # we are using scale()

df2 <- df # we are using normalize()

df3 <- df # for this we use custom normalize

## lets consider df1 and apply scale function

df1 <- df1[,-1]

df1 <- scale(df1)
df1
# we use normalize function
 install.packages("normalr")
 library(normalr)
?normalise
df2 <-  df2[,-1]

df_new <- normalise(df2,lambda = 3)
df_new

# so to custom normalize the data df3

df3 <- df3[,-1]

norm <- function(x){
  a = ((x-min(x))/(max(x)-min(x)))
  return(a)
}

df3_norm <- as.data.frame(apply(df3, MARGIN = 2, norm))
