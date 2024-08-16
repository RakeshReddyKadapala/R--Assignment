# Load iris dataset
data(iris)

# Part (a): Measures of central tendency
# Mean, median, and mode of each variable
apply(iris[, 1:4], 2, function(x) c(mean = mean(x), median = median(x), mode = as.numeric(names(sort(-table(x))[1]))))

# Part (b): Skewness and kurtosis
library(moments)
apply(iris[, 1:4], 2, function(x) c(skewness = skewness(x), kurtosis = kurtosis(x)))

# Part (c): Summary and describe functions by group
summary(iris)
by(iris[, 1:4], iris$Species, summary)
library(psych)
describeBy(iris[, 1:4], iris$Species)

# Part (d): Plots
# Bar plot of the count of each Species
library(ggplot2)
ggplot(iris, aes(x = Species)) + geom_bar()

# Histogram of each variable by Species
ggplot(iris, aes(x = Sepal.Length, fill = Species)) + geom_histogram(alpha = 0.5, position = "identity", bins = 10) +
  labs(title = "Histogram of Sepal Length by Species", x = "Sepal Length", y = "Count") + theme_bw()

ggplot(iris, aes(x = Sepal.Width, fill = Species)) + geom_histogram(alpha = 0.5, position = "identity", bins = 10) +
  labs(title = "Histogram of Sepal Width by Species", x = "Sepal Width", y = "Count") + theme_bw()

ggplot(iris, aes(x = Petal.Length, fill = Species)) + geom_histogram(alpha = 0.5, position = "identity", bins = 10) +
  labs(title = "Histogram of Petal Length by Species", x = "Petal Length", y = "Count") + theme_bw()

ggplot(iris, aes(x = Petal.Width, fill = Species)) + geom_histogram(alpha = 0.5, position = "identity", bins = 10) +
  labs(title = "Histogram of Petal Width by Species", x = "Petal Width", y = "Count") + theme_bw()

# Box plots of each variable by Species
ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) + geom_boxplot() +
  labs(title = "Box Plot of Sepal Length by Species", x = "Species", y = "Sepal Length") + theme_bw()

ggplot(iris, aes(x = Species, y = Sepal.Width, fill = Species)) + geom_boxplot() +
  labs(title = "Box Plot of Sepal Width by Species", x = "Species", y = "Sepal Width") + theme_bw()

ggplot(iris, aes(x = Species, y = Petal.Length, fill = Species)) + geom_boxplot() +
  labs(title = "Box Plot of Petal Length by Species", x = "Species", y = "Petal Length") + theme_bw()

ggplot(iris, aes(x = Species, y = Petal.Width, fill = Species)) + geom_boxplot() +
  labs(title = "Box Plot of Petal Width by Species", x = "Species", y = "Petal Width") + theme_bw()
