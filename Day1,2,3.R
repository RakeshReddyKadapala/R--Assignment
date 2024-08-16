# R is a an open source programming language & software
#environment
# for statistical analysis, graphical representation,
#data analysis & visualization 
# R is a simple and easy to learn,read & write
# Developed by Ross Ihaka & Robert Gentleman at the 
#University of 
# Auckland, Newzealand

5 + 6
9+10
print(5+6)
# using R as a calculator
# CTRL + ENTER
#BODMAS
5 - 6
5*6
(5*6)/7


#CTRL+L

1:50 # print numbers from 1:50
#syntax
50:1
3:8
8:3


print(50:1)

print("Welcome to R Programming Session") # print anything

"Welcome to R Programming Session"

print(25.5 + 12.7) # printing the calculation
25.5 + 12.7



ctrl+l # to clear console window

#The elements of a vector must all have the same mode, or data type. You
#can have a vector consisting of three character strings (of mode character)
#or three integer elements (of mode integer), but not a vector with one integer element and two character string elements.


# Data Types in R - 
# Vector, List, Matrix, Array, Factor, Data Frame
data(BJsales)
View(BJsales)
data(package = .packages(all.available = TRUE))
# Vector - contains elements of same class
#A vector, in programming, is a type of array that is one dimensional. 
#Vectors are a logical element in programming languages that are used for storing data.
#Vectors are similar to arrays but their actual implementation and operation differs
#Vectors are primarily used within the programming context of most programming languages
#and serve as data structure containers. Being a data structure,
#vectors are used for storing objects and collections of objects in an 
#organized structure.


#The major difference between and array and a vector is that, unlike typical arrays, 
#the container size of a vector can be easily increased and decreased to complement 
#different data storage types. Vectors have a dynamic structure and provide the ability 
#to assign container size up front and enable allocation of memory space quickly.
#Vectors can be thought of as dynamic arrays.
# there are 6 types of these atomic vectors, also known as 6 classes of vectors which are
#Logical, Numeric, Interger, Complex, Character, Raw
# 1. Logical - True, False
a1 <- TRUE
TRUE->a1
a1
print(a1)
class(a1)
a <- c(TRUE,FALSE,TRUE,FALSE) #logical vector
a
class(a)
help(c)

# 2. Numeric 
K<-c(2L,5L,6L,7L,89L)
K
class(K)

p<-c(44,55,78,99)
p
class(p)

#___________________________________________________
help(class)
?class()
b <- c(0, 1, 2, 5, 4.11, 6.0, -2, 4, c(7, 8, 9))# numeric vector
b
class(b)

eee<- 66
eee<- 5323534

# 3. Integer # Whole numbers & not a fraction
y <- c(2L, 34L, 0L)
#50.98L
y
class(y)

f <- c(2.3L,34.5L,0L)
class(f) # not an integer
# 4. Complex data type
d <- c(5 + 9i,3+7i, 2L , 7.0)
class(d)
sqrt(25)
sqrt(-27+0i)
sqrt(-17+0i)
sqrt(17)
x <- 2
s5 <- rep(x, times=5)
s5
help(rep)
y = c(2,3)
s6 <- rep(y, each=5)
s6

k<- 5+7
k

s <- c(8,7,5,6)
s
# 5. Character
e <- c("Right now", 'it is', '10:15 am!',67)
e
class(e)
print(e)
length(e)
K<-c(2222222222,30L,3+8i)

class(K)
pi
# exponential
exp(88)
k<-2^-5
k
options(scipen = 999)
j <- 1e+15
j

# accessing vector elements 
#by their indeces or subscripts
##################################################################
print(1:3)
1:3
# here c is combining more than one element in the vector
a <- c(TRUE,FALSE,TRUE,FALSE)
a[-1]
a[1:3]
a[4]
w <- a[1] 
w
a[3]
a[1:3]

a[c(1,3,4)]
#a[1:3] =! a[c(1,3)]

# Viewing vectors in tabular format
# R is case sensitive

View(a) # only helpful in small length vectors
?View()

v <- charToRaw("vasudevan")
v
p <- charToRaw("vignyan")
p
print(class(v))


# List -  can contain many different types
# of elements inside it
#like vectors, 
# functions and even another list inside it
h <- list(23, 21.3, c(2,5,3), "hello")
class(h)
h[1]
h[2]
h[[5]] <- 66
h
length(h)

h[[3]][2]

h[[1]]
h[[3]]
View(h)
class(h)
g <- NULL
class(g)
################################################
#NULL < raw < logical < integer< real < complex < character < list < expression: pairlists are
#treated as lists.
l<-c(23L, NULL,TRUE,4+3i,"data",first_name = list("sreekanth","pavan"))
class(l)

k <- NULL
class(k)
#-------------------------------------------------
p <- c(23, 21.3, c(2,5,3), "hello")
class(p)

g <- list(23, 21.3, c(2,5,3), "hello", 3+5i, 2L)
length(g)
class(g)
## Lists
#list is an object consisting of an ordered collection of objects known as its 
#components.
#There is no particular need for the components to be of the same mode or type, and, for
#example, a list could consist of a numeric vector, a logical value, a matrix, a complex vector, a
#character array, a function, and so on. Here is a simple example of how to make a list:

Lst <- list(name = c("Fred","Jhonny"), wife=c("Mary","Anna"), no.children=c(3,5),
            child.ages=c(4,7,9,10,15))
Lst[[1]]
Lst$name
Lst[[4]]
Lst[[4]][3]
#########################################################################
# we can also do the above indexing by using the inbuilt functionality of list
# such as 
Lst$name
Lst$wife
Lst$child.ages

# this can also be done as 
Lst[["name"]]

x <- "name"
Lst

#It is very important to distinguish Lst[[1]] from Lst[1]. '[[...]]' is the operator
#used
#to select a single element, whereas '[...]' is a general subscripting operator.
#Thus the former is the first object in the list Lst, and if it is a named list 
#the name is not included. 
#The latter is a sublist of the list Lst consisting of the first entry only.
#If it is a named list, the names are transferred to the sublist.

Lst[[1:2]]
Lst[[1]]
S <- list(a=45,b=32.8,d=c(21,31,67,4,19,50,70),l="hi")
attach(S)
?attach()
length(S)
S$d
S[[3]][5]
d

S$a
S$l
View(S)
S[[3]]
S$d[3]
x <- list(a = list(10, 12, "LSHC"), b = c(3.14, 2.81))
View(x)
## Get the 3rd element of the 1st element
x[[2]][2]

x[[1]][3]

x$a
x[[1]]
x[1]



x$b[2]
x[[c(1, 3)]]
x[[1]][1]
x[[c(1,1)]] # is same as line 211

f <- list(a=45,b= c(32.8,65.4,99), d=c(10,27,34,48,58,97,75),l="hi")



f[[3]][6]  
f[[c(3, 6)]]
f[c(3,6)]
## 1st element of the 2nd element
f[[c(2, 2)]]  
f[[2]][3]
f[c(2, 3)]

#Vectors will be coerced to the highest type of the
#components in the hierarchy
#NULL < raw < logical < integer< real < complex < character < list < expression: pairlists are
#treated as lists.

# unlist()
j <- list(name="Joe", salary=55000, union= T)
j
class(j)

ulj <- unlist(j)
ulj

class(ulj)
# how about unlisting numbers
z <- list(a=5,b=12,c=13)
class(z)
y <- unlist(z)
class(y)

# how about mixed
w <- list(a=5,b="xyz")
wu <- unlist(w)
class(wu)

# we will look into built in function of R such as apply(), lapply(), sapply(),tapply()
# functions
## apply()

# apply() functions matrix or Dataframe as input and provides output as vector, list or array
# apply() function is primarly used to avoid loop constructs. 
# apply() function takes three arguments such as
#apply(X,MARGIN,FUN) 
# where in X is a matrix or Dataframe
# Margin takes values as 1 and 2 which helps to define on where to apply function
# MARGIN = 1 manipulation is performed on rows
# MARGIN = 2 manipulation is performed on columns
# MARGIN = c(1,2) manipulation is performed on both Rows and columns
# FUN = tells which function to apply, built in funtions like mean, median, sum, min,
# max, and even user defined functions can also be applied

# for example lets considers a matrix and apply column sum on it
m1 <- matrix(1:10, nrow = 5, ncol = 6)
m1
a_m1 <- apply(m1[,c(3,4)], 2, sum)
a_m1
#####################################################################

# lapply is used to perform operations on list objects and return list object of same
# length as of original set. lapply() takes input as list, dataframe, vector and provides
# as list
# arguments of lapply() function are 
# lapply(X, FUN)
#x is vector /list / dataframe
# FUN is function 

# for example if we want to convert a list of string uppercase elements to lowercase
# we use lapply() to do it at once
#tolower is inbuilt functions
movies <- c("SPYDERMAN","BATMAN","VERTIGO","CHINATOWN")
movies_lower <-lapply(movies, tolower)
str(movies_lower)
# structure 
lapply(list(1:3,25:29),median)

########################################################################

# sapply() takes inputs as dataframe, list, vector but provides output as a vector unlike lapply()
movies_1 <- c("SPYDERMAN","BATMAN","VERTIGO","CHINATOWN")
movies_lower_1 <-sapply(movies_1, tolower)
str(movies_lower_1)

sapply(list(1:3,25:29),median)
##########################################################################

# tapply() computes a measure (mean, median, min, max, etc..) or a function for
# each factor variable in a vector. It is a very useful function that lets you 
# create a subset of a vector and then apply some functions to each of the subset.
# arguments of tapply() are 
# tapply(X, INDEX, FUN)
# X = an object, dataframe or vector
# INDEX = A list containing factor
# FUN = Functions that we want to apply such as mean, median, sum

# for example we will load a dataset called as iris
data()
data("iris")
View(iris)

str(iris)
levels(iris$Species)
iri <- tapply(iris$Sepal.Width, iris$Species, median)
iri
##############################################################################

# Matrix - two-dimensional(rows*columns) rectangular data set 
# It can be created using a vector input to the matrix function
# The data elements must be of the same type
# All columns in a matrix must have the same type of 
#mode(numeric, character, etc.) 
# and the same length
?matrix()
#column order format
#The internal storage of a matrix isin column-major order, meaning that 
#first all of column 1 is stored, then all of column 2, and so on...
#Though internal storage of a matrix is in column-major order, you can set the
#byrow argument in matrix() to true to indicate that the data is coming
#in row-major order. Here's an example of using byrow:

m <- matrix(c(1,2,3,4,5,6),nrow = 2,ncol = 3,byrow = T )
m
class(m)
i <- matrix(c(10, 20, 30, 40), nrow = 2, ncol = 2, byrow = TRUE, 
            dimnames = list(c('r1', 'r2'), c('c1', 'c2')))
i
print(i)
#
y <- matrix(c(10, 20, 30, 40), nrow = 4, ncol = 2, byrow = FALSE, 
            dimnames = list(c('r1', 'r2', 'r3','r4'), c('c1', 'c2')))
y
View(y)
y <- matrix(c(10, 20, 30, 40), nrow = 5, ncol = 4, byrow = FALSE)
y
# default value for byrow is FALSE
class(y)
i
A = matrix( 
    c(2, 4, 3, 1, 5, 7), # the data elements 
     nrow=2,              # number of rows 
     ncol=3,              # number of columns 
     byrow = TRUE
    )
A
View(A) 

# Accessing elements of a matrix
A[2,2]
A[1,3]
A[1,2]

'The Operator%*% is used for matrix multiplication
satisfying the condition that the number of columns
in the first matrix is equal to the number of rows in 
second. If matrix A[M, N] and matrix B[N, Z] are 
multiplied then the resultant matrix will of dimension M*Z'

# R program for matrix multiplication 

# Creating matrices 
m <- matrix(1:8, nrow=2) 
n <- matrix(8:15, nrow=4) 
m
n
# Multiplying matrices using operator 
print(m %*% n) 

# 1*8+3*9+5*10+7*11 = 162      1*12+3*13+5*14+7*15=226
# 2*8+4*9+6*10+8*11 = 200      2*12+4*13+6*14+8*15=280

# mathematical multiplication of a matrix by scalar
p <- 3*m
p
# matrix addition is m+m

# Creating matrices and multiply it without %

j <- matrix(1:8, nrow=2) 
l <- matrix(8:15, nrow=2) 

# Multiplying matrices 
print(j*l) 

# subsetting a matrix
o <- matrix(1:20, nrow = 4, ncol = 5)
o
o[2:3,3:4]
o[2:3,1:2]
o[,2:3]# by columns
o[2:3,] # by rows

o[c(1,3),] <- matrix(c(1,1,8,12,20,25,36,50,89,100),nrow=2)
o

####################################################################################
# Array - While matrices are confined to 2 dimensions, 
# arrays can be of any number 
# of dimensions.

#An array can be considered as a multiply subscripted collection of data entries,
#for example numeric.
?array
#help(function)
x <- array(c(1:20),dim = c(4,5))
colnames(x) <- c('A','B','C','D','E')
x
class(x)
class(o)
x[1:3,1:2] #susetting array
x[1,3]
x[2,2]
x[3,1]
x[c(1,4),c(2,3)]
#. Extract elements X[1,3], X[2,2] and X[3,1] as a vector structure, and
#. Replace these entries in the array X by zeroes.
## this is called as indexing matrix 
i <- array(c(1:3,3:1), dim=c(3,2)) # column major order
i # i is a 3 by 2 index array.
x[i]
#. Replace these entries in the array X by zeroes.
x[i] <- 0 
x[i] <- c(-21,22,23)
x

j <- array(c(1,8,9), dim = c(2, 5,3))

j
class(j)
# Accessing an array
j[,,3] # 4th array 
# Accessing individual element from an array
j[2,5,3] # 2nd row, 5th column, 3rd array 


#___________________________________________________________________________

j <- array(c(1,8,9,2,42,52,36,12,17,15,3,5,6,7,8,9,1,2,6,9), dim = c(2, 5,3))
j
j[2,5,3]
j[2,5,2]
# for example if we consider a scenario for higer dimensional array to construct
# we shall take students and tests where in we consider three students and each test
# has two parts in it so test1 has two parts and test two has two parts
# please check class video to better understand this concept
firsttest <- matrix(c(80,21,50,30,25,98),nrow = 3, ncol = 2)
firsttest

secondtest <- matrix(c(46,41,75, 43,35,20), nrow = 3, ncol = 2)
secondtest

# now we create an array by combining both first test and second test such that we have
# one layer per test,
# In layer 1, there will be three rows for the three students' scores on the
# first test, with two columns per row for the two portions of a test

tests <- array(data=c(firsttest,secondtest), dim=c(3,2,2))
tests
attributes(tests)

tests[2,2,1]
tests[2,2,2]
tests[2,1,1]

########################################################################################
# Factor - variable which can take certain values(levels) 
#and not any
k <- c("red", "green", "blue", "blue", "red", "red")
class(k)
k
factor_k <- factor(k)


class(factor_k)
factor_k

l <- c(1, 2, 3, 4, 4, 5, 3, 2, 5.1)
l
class(l)
factor_l <- factor(l)
class(factor_l)
factor_l

##################################
# Data Frame
# Unlike a matrix in data frame each column can contain 
# different modes of data
# It is a list of vectors of equal length
df <- data.frame(gender = c("Male", "Male","Female","Female",NA,NA,NA), height = c(152, 171.5, 165,168,NA,NA,NA), 
                weight = c(81,93, 78,67,NA,NA,NA), Age = c(42,38,26,54,NA,NA,NA),edu = c("tenth","12th","grad","pg","phd","research","scientist"))
View(df)
is.na(df)
sum(is.na(df))
class(df)
df

str(df)
df$gender

attach(df)
Age
df$gender <- as.factor(df$gender)
df$edu <- as.factor(df$edu)
levels(df$gender)
levels(df$edu)

nlevels(df$edu)
str(df)
summary(df)
df <- na.omit(df)
hist(df$Age)
boxplot(df$Age)
library(moments)
hist(df$height)







