#install.packages("ggplot2")
library(ggplot2)

dataset = mtcars

# Generating a basic scatter plot
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point()

# Changing the point size and shape
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point(size=1, shape=18)

# Adding the regression line
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point(size=1, shape=18) +
  geom_smooth(method = lm)

#Removing the confidence interval
ggplot(dataset, aes(x=wt,y=mpg))+
  geom_point()+
  geom_smooth()
geom_smooth(method=lm,se = FALSE)



#Changing the point color
#Changing the line color
ggplot(dataset, aes(x=wt,y=mpg))+
  geom_point()+
geom_smooth(method=lm, linetype="dashed", color="darkblue")

#The loess method
ggplot(dataset, aes(x=wt,y=mpg))+
  geom_point()+
  geom_smooth()
#Changing the confidence interval color
ggplot(dataset, aes(x=wt,y=mpg))+
  geom_point()+
  geom_smooth(method=lm, linetype="dashed", color="darkred",
              fill ="blue")


#Scatter plots with multiple groups

#changing the points shape by the levels of cyl
#converting the cyl column from a numeric to factor
dataset$cyl = as.factor(dataset$cyl)
ggplot(dataset, aes(x=wt,y=mpg,shape = cyl))+
  geom_point()
#changing point shapes,colors and sizes
ggplot(dataset, aes(x=wt,y=mpg,shape = cyl,color=cyl, size = cyl))+
  geom_point()
