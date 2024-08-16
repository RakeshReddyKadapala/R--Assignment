            ###Indian Institute of Technology Jodhpur - M.Tech
              ##Data Analytics Lab - assignm-2 -2nd Sem
                #Kadapala Rakesh Reddy - m22ai608

#q1> Create a vector X of all prime numbers from 1 to 1000. Use R to
# (a) Count the number of elements in this vector X
# (b) Find their sum
# (c) Find their average.
# (d) Add 5 to the last 10 elements of the vector X.


#printing prime numbers from 1 to 1000
prime_numbers <- function(n) {
  if (n >= 2) {
    x = seq(2, n)
    prime_nums = c()
    for (i in seq(2, n)) {
      if (any(x == i)) {
        prime_nums = c(prime_nums, i)
        x = c(x[(x %% i) != 0], i)
      }
    }
    return(prime_nums)
  }
  else
  {
    stop("Input number should be at least 2.")
  }
}
# create vector X of all prime numbers from 1 to 1000
X=prime_numbers(1000)
X
#output : prime numberes from 2 to 997


# create vector X of all prime numbers from 1 to 1000

#count the no.of ele in X
length(X)
#o/p:168
#sum
sum(X)
#o/p: 76125
#average
mean(X)
#o/p: 455.83
#Add 5 to the last 10 elements of the vector X.
X[(length(X)-9):length(X)] <- X[(length(X)-9):length(X)] + 5
X[(length(X)-9):length(X)]
#o/p: 942  946  952  958  972  976  982  988  996 1002


#2q>Create and store a sequence of values from -11 to 5 that progresses in steps of 0.3.Overwrite the object using the same sequence with the order reversed.
seq_values <- seq(from = -11, to = 5, by = 0.3)
seq_values
# Reverse the order of the sequence and overwrite the original object
seq_values <- rev(seq_values)
seq_values
#o/p: [1]   4.9   4.6   4.3   4.0   3.7   3.4   3.1   2.8   2.5   2.2   1.9   1.6   1.3   1.0   0.7   0.4   0.1  -0.2  -0.5  -0.8  -1.1  -1.4  -1.7  -2.0  -2.3  -2.6  -2.9  -3.2  -3.5  -3.8  -4.1  -4.4  -4.7  -5.0  -5.3  -5.6  -5.9  -6.2  -6.5  -6.8  -7.1  -7.4  -7.7  -8.0  -8.3  -8.6,  -8.9  -9.2  -9.5  -9.8 -10.1 -10.4 -10.7 -11.0


#3q> With the following data, create a plot of weight on the x-axis and height on the y-axis.
# Use different point characters or colors to distinguish between males and females and provide a matching legend.
#Label the axes and give the plot a title.(box plot)

#ggplot is used to plot
##install.packages("ggplot2")
library(ggplot2)
library(readxl)
library(lifecycle)
library(dplyr)
library(plotly)
# Load the data
my_data <- read_excel("C:/Users/Admin/OneDrive/Desktop/bodymassindex.xlsx")
View(my_data)
dim(my_data)
my_data$`weight(kg)`
my_data$`height(cm)`
my_data$sex
# printing column names
colnames(my_data)
# "weight(kg)" "height(cm)" "sex"
#scatter plot for weight and height
plot(my_data$`weight(kg)`,my_data$`height(cm)` , xlab = 'weight',ylab = 'height',main = 'Gender weight and height',col='red')
#calculate bodymassindex
bmi<- mutate(my_data,BMI=my_data$`weight(kg)`/(my_data$`height(cm)`/100)^2)
bmi
hist(bmi$BMI)
#barplot
# plotting vector
barplot(my_data$`weight(kg)`,my_data$`height(cm)`, xlab = "weight",
        ylab = "height", col = "white",
        col.axis = "darkgreen",
        col.lab = "darkgreen")

# plot for weight and height
ggplot(my_data, aes(x = my_data$`weight(kg)`, y = my_data$`height(cm)`, color = my_data$sex)) +
  geom_point() +
  labs(x = "Height (cm)", y = "Weight (kg)", color = "Sex") +
  theme_bw()

# plot with a legend for weight only
ggplot(my_data, aes(x = my_data$`weight(kg)`, y = my_data$`height(cm)`, color = my_data$sex)) +
  geom_point() +
  labs(x ="Weight (kg)"  , y = "Height (cm)", color = "sex") +
  scale_color_manual(values = c("Male" = "green", "Female" = "pink"),
                     labels = c("Males", "Females")) +
  theme_bw()



#4q>Use R to plot the three conic curves that is parabola, hyperbola and ellipse
library(mosaicData)
# Parabola equation: y = x^2
x <- seq(-10, 10, 0.1)
y <- x^2
plot(x, y, type = "l", main = "Parabola", xlab = "x", ylab = "y")

# Hyperbola equation: y = 1/x
x <- seq(-10, 10, 0.1)
y <- 1/x
plot(x, y, type = "l", main = "Hyperbola", xlab = "x", ylab = "y")

# Ellipse equation: x^2/4 + y^2/9 = 1
x <- seq(-4, 4, 0.1)
y1 <- sqrt(9 - 9 * x^2/4)
y2 <- -sqrt(9 - 9 * x^2/4)
plot(x, y1, type = "l", xlim = c(-4, 4), ylim = c(-3, 3), main = "Ellipse", xlab = "x", ylab = "y")
lines(x, y2)

#5q>Generate 100 random numbers with Gaussian distribution with mean equal to 1 and variance equal to 0.5.
#Plot a histogram for the same.

# Set seed for reproducibility
set.seed(123)

# Generate 100 random numbers with Gaussian distribution
x <- rnorm(n = 100, mean = 1, sd = sqrt(0.5))
x
# Plot a histogram
hist(x, breaks = 10, col = "blue", main = "Histogram of 100 Random Numbers with Gaussian Distribution",
     xlab = "Value", ylab = "Frequency")

#6q>Generate 100 random numbers with normal distribution with mean 50 and standard deviation
# Find the proportion of numbers which are 2 standard deviations from the mean.

# Set seed for reproducibility
set.seed(123)

# Generate 100 random numbers with normal distribution
x <- rnorm(n = 100, mean = 50, sd = 10)

# Find proportion of numbers which are 2 standard deviations from the mean
lower_bound <- 50 - 2*10
upper_bound <- 50 + 2*10
prop_2sd <- mean(x < lower_bound | x > upper_bound)

# Print proportion
cat("Proportion of numbers that are 2 standard deviations from the mean:", prop_2sd)
#o/p:Proportion of numbers that are 2 standard deviations from the mean: 0.04

#7q>Plot a bar chart and pie chart for the following data:
#creating dataframe
# Create vectors for the data
cities <- c("London", "New York", "Singapore", "Dubai")
population_inlakhs <- c(21,62,10,65)

# Combine the vectors into a dataframe
df <- data.frame(City = cities, Population = population_inlakhs)

# Print the dataframe
df
# Create a bar chart
barplot(df$Population, names.arg = df$City, xlab = "City", ylab = "Population", main = "Population by City")

# Create a pie chart
pie(df$Population, labels = df$City, main = "Population by City")

#8q>Consider the Birth Dataset (attached here). Use R tools of descriptive statistics to obtain the
#measure of central tendency, measure of dispersion and various graphs and analyze the results.

#load data
library(readxl)
birth_data <- read_excel("C:/Users/Admin/OneDrive/Desktop/Births-dataset-25015.xlsx")
View(birth_data)
# Measures of central tendency
mean_births <- mean(birth_data$births)
median_births <- median(birth_data$births)
mode_births <- names(sort(-table(birth_data$births)))[1]
cat(mean_births,median_births,mode_births)
# Measures of dispersion
range_births <- range(birth_data$births)
var_births <- var(birth_data$births)
sd_births <- sd(birth_data$births)
cat(range_births,var_births,sd_births)
range_births
# Histogram
hist(birth_data$births, main = "Births Histogram", xlab = "Births", ylab = "Frequency")

# Boxplot
boxplot(birth_data$births, main = "Births Boxplot")

# Density plot
plot(density(birth_data$births), main = "Births Density Plot", xlab = "Births", ylab = "Density")
