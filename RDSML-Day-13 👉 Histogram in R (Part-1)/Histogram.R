#Downloading the practice file


#Importing the dataset
dataset = read.csv("data.csv")

#Importing the library
library(ggplot2)

#Basic histogram using ggplot2
ggplot(dataset,aes(x=weight))+
  geom_histogram()


#Changing the width of bins
ggplot(dataset,aes(x=weight))+
  geom_histogram(binwidth=1,color="black")

#Changing colors
ggplot(dataset,aes(x=weight))+
  geom_histogram(binwidth=1,color="black",fill="navyblue")

#Adding the mean line
myplot=ggplot(dataset,aes(x=weight))+
  geom_histogram(color="black",fill="navyblue")
myplot + geom_vline(aes(xintercept=mean(weight)),color="blue",
                    linetype="dashed",size=1)

#Histogram with density plot
ggplot(dataset,aes(x=weight))+
  geom_histogram(aes(y=after_stat(density)),color="black",fill="white")+
  geom_density()

#Changing line color and fill r
ggplot(dataset,aes(x=weight))+
  geom_histogram(color = "darkblue",fill="white")

#Uploading the work to GitHub
