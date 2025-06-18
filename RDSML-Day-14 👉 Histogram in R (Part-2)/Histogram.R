#Importing the dataset
dataset = read.csv("data.csv")
#Importing the library
library(ggplot2)
#creating basic histogram
ggplot(dataset, aes(x=weight))+
  geom_histogram(color="white")

#Changing histogram plot colors by groups
ggplot(dataset, aes(x=weight,fill=sex))+
  geom_histogram(color="white", alpha=1, position="dodge")+
  theme(legend.position ="top")
# we can change the position adjustment to use for overlapping points on layer
#possible values for the argument position are
#"identity","stack, "dodge default value is stack

#leaved histograms
ggplot(dataset, aes(x=weight,fill=sex))+
  geom_histogram(color="white", alpha=1, position="dodge")+
  theme(legend.position ="top")

#the plyr package is used to calculate the mean weight of each group
install.packages("plyr")
library(plyr)
group_means = ddply(dataset,"sex",summarise,grp.mean=mean(weight))
group_means

#Adding mean lines
myplot = ggplot(dataset, aes(x=weight,fill=sex))+
  geom_histogram(color="white", alpha=1, position="dodge")+
  geom_vline(data = group_means,aes(xintercept = grp.mean,color=sex),linetype="dashed")

  theme(legend.position ="top")
  myplot
#Using custom color palettes
  myplot + scale_color_manual(values = c("#999999","#E69F00"))+
    scale_fill_manual(values=c("#999999","#E69F00"))
#Using brewer color palettes
  myplot+scale_color_brewer(palette="Dark2")+
    scale_fill_brewer(palette ="Dark2")
#Using a grey scale
