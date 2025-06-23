
#Creating a data frame
df = data.frame(dose =c("D0.5","D1","D2"),len = c(4.2,10,29.5))

#Basic barplot
library(ggplot2)
ggplot(data=df,aes(x=dose,y=len))+
  geom_bar(stat = "identity")

#Horizontal bar plot
ggplot(data=df,aes(x=dose,y=len))+
  geom_bar(stat = "identity")+
  coord_flip()

#Changing the width of bars
ggplot(data=df,aes(x=dose,y=len))+
  geom_bar(stat = "identity", width=0.5)

#Changing colors
ggplot(data=df,aes(x=dose,y=len))+
  geom_bar(stat = "identity",color="blue",fill="white", width=0.5)
#Minimal theme + blue fill color
ggplot(data=df,aes(x=dose,y=len))+
  geom_bar(stat = "identity",fill="steelblue")+
  theme_minimal()
#Bar plot with labels
#outside bars
ggplot(data=df,aes(x=dose,y=len))+
  geom_bar(stat = "identity", fill="steelblue")+
  geom_text(aes(label=len),vjust=-0.5,size=3,color="#999999")+
  theme_minimal()
#inside bars
ggplot(data=df,aes(x=dose,y=len))+
  geom_bar(stat = "identity", fill="steelblue")+
  geom_text(aes(label=len),vjust=0.5,size=3,color="white")+
  theme_minimal()
Mtcardata = mtcars
#Barplot of counts
ggplot(data=mtcars,aes(x=factor(cyl)))+
  geom_bar(stat="count",width=0.7,fill="steelblue")+
  theme_minimal()
         
#Changing barplot line colors by groups

