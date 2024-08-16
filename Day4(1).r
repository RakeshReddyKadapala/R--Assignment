# creating a dataframe

employee.data <- data.frame(
  emp_id = c(1:5),
  emp_name = c("Ravi","Sagar","Nehal","shaik","jameel"),
  salary = c(20000, 25000, 15000, 28000, 27000),
  start_date = as.Date(c("2012- 01-01","2013-09-02","2014-05-06","2012-04-03","2010-04-02"))
)
# to View your dataframe
View(employee.data)

# print your dataframe
print(employee.data)

# check structure of dataframe
str(employee.data)
# check summary of dataframe
summary(employee.data)

employee.data$salary

attach(employee.data)

emp_name
# creating new data frame
emp_newdata <- data.frame(
  emp_id = c(6:10),
  emp_name = c("prashanth","fatima","john","fred","king"),
  salary = c(12000,23000,19000,22000,32000),
  start_date = as.Date(c("2010-03-04","2012-03-03","2010-03-02","2013-03-04","2010-03-04"))
)

# to combine two datasets we use rbind() function 

final_emp_data <- rbind(employee.data,emp_newdata)

View(final_emp_data)
attach(final_emp_data)

str(final_emp_data)

## column bind then use cbind() 
# creating new dataframe with new columns
col_emp <- data.frame(
  dept = c("IT","Operations","Finance","Managment","HR"),
  skills = c("java","Python","R","Matlabe","c"),
  
)

final1 <- cbind(final_emp_data,col_emp)

summary(final1)

attach(final1) # to call use your column names without referring to your dataframe
# visual analysis
mean(final1$salary)
median(final1$salary)
range(final1$salary)
range(salary)
hist(final1$salary)

#### load your data into R studio 
install.packages("readr")
library(readr)

df <- read.csv(file.choose())

View(df)

attach(df)

library(ggplot2)
# Some basic information
# The data that you want to visualise and a set of aesthetic mappings
# describing how variables in the data are mapped to aesthetic attributes
# that you can perceive.
# . Geometric objects, geoms for short, represent what you actually see on
# the plot: points, lines, polygons, etc.
# . Statistical transformations, stats for short, summarise data in many useful
# ways. For example, binning and counting observations to create a histogram,
# or summarising a 2d relationship with a linear model. Stats are optional,
# but very useful.
# . The scales map values in the data space to values in an aesthetic space,
# whether it be colour, or size, or shape. Scales draw a legend or axes, which
# provide an inverse mapping to make it possible to read the original data
# values from the graph.
# . A coordinate system, coord for short, describes how data coordinates are
# mapped to the plane of the graphic. It also provides axes and gridlines to
# make it possible to read the graph. We normally use a Cartesian coordinate
# system, but a number of others are available, including polar coordinates
# and map projections.
# . A faceting specification describes how to break up the data into subsets
# and how to display those subsets as small multiples. This is also known as
# conditioning or latticing/trellising.

data()
#df <- diamonds
dsmall <- diamonds[sample(nrow(diamonds), 100), ]
df <- read.csv(file.choose()) # credit dataset
attach(df)
qplot(amount, age, data = df)
qplot(amount, age, data = df, colour = job)
qplot(amount, age, data = df, shape = job)
qplot(amount, age, data = df, alpha = I(1/10))
# geom = "point" draws points to produce a scatterplot. This is the default
# when you supply both x and y arguments to qplot().
# . geom = "smooth" fits a smoother to the data and displays the smooth and
# its standard error, § 2.5.1.
# . geom = "boxplot" produces a box-and-whisker plot to summarise the
# distribution of a set of points, § 2.5.2.
# . geom = "path" and geom = "line"
# For continuous variables, geom = "histogram" draws a histogram, geom =
#   "freqpoly" a frequency polygon, and geom = "density" creates a density
# 
# qplot(amount, age, data = df, geom = c("point", "smooth"))

qplot(age, data = df, geom = "histogram")
qplot(amount, data = df, geom = "density")
p <- ggplot(df, aes(age, amount, colour=job)) + geom_point()

# Add a regression line
ggplot(df, aes(amount, age, colour=job)) +
  geom_point(shape=1) +
  geom_smooth(method=lm)

# A historgram count plot
ggplot(data=df, aes(x=amount)) +
  geom_histogram( col="red",
                  fill="green",
                  alpha = .2,
                  binwidth = 5)

p <- ggplot(df, aes(job))
p + geom_bar()
p + geom_bar()

# set the plotting area into a 1*2 array
par(mfrow=c(1,2))

amt <- df$amount
ag <- df$age
par(mfrow=c(2,2))
par(mfcol = c(1, 2))
hist(amt)
boxplot(amt, horizontal=TRUE)
hist(ag)
boxplot(ag, horizontal=TRUE)


# load your excel or it also called as .xlsx format 
install.packages("readxl")
library(readxl)
# change path location accordingly # watch video for more details
df1 <- read_csv("C:/Users/abdul/Desktop/assignmnent@360 key/Python codes/Python codes/clustering/crime_data.csv")
# removing first column
#df1 <- df1[-1]
summary(df1)
str(df1)
attach(df1)

## histogram is univariate analysis

hist(df1$Murder)
a = hist(df1$Rape)
a
## boxplot is univariate analysis

c = boxplot(df1$Rape)
c
# to get outlier information
c$out


str(df1)

# to convert it to factors use as.factor

df1$city <- as.factor(df1$city)
str(df1)
# to check if its a factor
is.factor(df1$city)
is.numeric(df1$Murder)
is.character(df1$city)

# loading execl files,check video for more details on it
# load files of .xlxs format type
df2 <- read_excel(file.choose(),sheet = 2)


# creating a vector data 
data <- c("east","west","north","south","north","west","east","east")
# check if its a factor
is.factor(data)
# convert it into factor type
factor_data <- as.factor(data)

print(is.factor(factor_data))
print(factor_data)


