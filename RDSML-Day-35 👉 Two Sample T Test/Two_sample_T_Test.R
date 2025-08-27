#two sample t_test
#importing the dataset

dataset = read.csv("scores.csv")

#checking for the normal distribution
shapiro.test(dataset$Male)
shapiro.test(dataset$Female)

#checking the homogenity of variance

var.test(x=dataset$Male, y=dataset$Female)

#Running the independent sample T test
t.test(x=dataset$Male,y= dataset$Female, var.equal = TRUE)
