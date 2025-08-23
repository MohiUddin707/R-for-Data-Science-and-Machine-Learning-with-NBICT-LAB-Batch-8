#importing the data set
mydata = read.csv("bottle_data.csv")

#checking for the normality
#shapiro-wilk test
shapiro.test(mydata$value)

#one sample t test
t.test(x=mydata$value,mu = 150)
