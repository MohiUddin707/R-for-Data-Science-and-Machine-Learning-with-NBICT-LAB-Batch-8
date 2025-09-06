#paired samples t-tes in R
#importing the dataset

mydata = read.csv("paired-samples-t-test.csv")

#calculating the difference
diffs = mydata$carb - mydata$carb_protein
diffs
#checking if the differences are normal
shapiro.test(diffs)

#cheking for outlier

boxplot(diffs)

#running the paired t-test

t.test(x = mydata$carb, y= mydata$carb_protein,
       paired = TRUE)

#running the wilcoxon signed-rank test
wilcox.test(x = mydata$carb, y= mydata$carb_protein,
            paired = TRUE)
#Calculating mean and sd
mean(mydata$carb)
mean(mydata$carb_protein)

sd(mydata$carb)
sd(mydata$carb_protein)

#effect size calculation using Cohen;s d
install.packages("effsize")
library(effsize)
cohen.d(mydata$carb, mydata$carb_protein,paired=T)
# a paired sample t test was used to determine whether 
#theere was a statistically significance mean difference.
#the distance ran when particimant imbibed a carbohydrate
#protein drink compRED tO A carbohydrate only drink.
#no outliers was ditected. the assumption of normality was
#not vioalated, as assesed by shiori-wilk"s test.
#(p=0.78), participants ran further when limbing the carbohydrate
#protein

