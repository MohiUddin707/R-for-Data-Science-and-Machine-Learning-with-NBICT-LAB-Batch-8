# Simple Linear Regression

# Importing the dataset
dataset <- read.csv("Salary_Data.csv")

# Splitting the dataset into the training set and test set
# install.packages("caTools")
library(caTools)
set.seed(123)
split <- sample.split(dataset$Salary, SplitRatio = 2/3)
split
training_set <- subset(dataset, split == TRUE)
test_set <- subset(dataset, split == FALSE)

# Fitting the Simple Linear Regression model to the training set
regressor <- lm(formula = Salary ~ YearsExperience, 
                data = training_set)

#checking the summary of the model
summary(regressor)
#Predicting the test set 
library("predict")
y_pred = predict(regressor, newdata = test_set)
y_pred

#visualize
library(ggplot2)
ggplot()+
  geom_point(aes(x = training_set$YearsExperience, y= training_set$Salary),
             colour = "red")+
geom_line(aes(x = training_set$YearsExperience, y= y_pred),
           colour = "blue")
             