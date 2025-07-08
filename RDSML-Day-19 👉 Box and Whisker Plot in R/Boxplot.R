#Anatomy of a boxplot

#Loading the dataset
myData = ToothGrowth
#Converting the variable dose from a numeric to a factor variable
myData$dose = as.factor(myData$dose)
library(ggplot2)
#Basic box plot
ggplot(myData,aes(x=dose,y =len))+
  geom_boxplot()
  
#Rotating the box pl
ggplot(myData,aes(x=dose,y =len))+
  geom_boxplot()+
  coord_flip()
#Notched box plot
ggplot(myData,aes(x=dose,y =len))+
  geom_boxplot(notch=T)
#Changing outlier, color, shape, and size
ggplot(myData,aes(x=dose,y =len))+
  geom_boxplot(outlier.color="red",outlier.shape=8,outlier.size=3)
#Choosing which items to disp
ggplot(myData,aes(x=dose,y =len))+
  geom_boxplot(outlier.color="red",outlier.shape=8,outlier.size=3)+
  scale_x_discrete(limits =c("2"))
#Changing box plot line colors by gro
ggplot(myData,aes(x=dose,y =len,color=dose))+
  geom_boxplot()
#Changing box plot co

#Changing the order of items 
ggplot(myData,aes(x=dose,y =len))+
  geom_boxplot()+
  scale_x_discrete(limit=c("2","1","0.5"))
  
#Box plot with multiple group
ggplot(myData,aes(x=dose,y =len,fill=supp))+
  geom_boxplot()
#Changing box plot colors by 

#Changing the box position
ggplot(myData,aes(x=dose,y =len,fill=supp))+
  geom_boxplot(position = position_dodge(1))
