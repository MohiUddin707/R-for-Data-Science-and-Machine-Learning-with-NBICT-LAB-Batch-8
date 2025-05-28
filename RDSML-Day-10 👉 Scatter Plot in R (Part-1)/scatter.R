#install.packages("ggplot2")
library(ggplot2)
datasets = mtcars
#generating a basic scatter plot
ggplot(datasets, aes(x=wt,y=mpg))+
geom_point()  
#changing the point size and shape
ggplot(datasets, aes(x=wt,y=mpg))+
  geom_point(size=1, shape=18)  
#adding the regression line

ggplot(datasets, aes(x=wt,y=mpg))+
  geom_point(size=1, shape=18)+
geom_smooth()  
ggplot(datasets, aes(x=cyl,y=disp))+
  geom_point(size=1, shape=18)
ggplot(datasets, aes(x=drat,y=hp))+
  geom_point(size=1, shape=18)
ggplot(datasets, aes(x=wt,y=hp))+
  geom_point(size=1, shape=18)
