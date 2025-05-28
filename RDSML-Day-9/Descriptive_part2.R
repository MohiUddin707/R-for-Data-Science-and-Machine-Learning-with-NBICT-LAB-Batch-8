# Descriptive statistics using psych package

install.packages("psych")
library(psych)

# Using the New York airport flight data
install.packages("nycflights13")
attach(nycflights13::flights)

# Lets look at the first 6 records using the head() function
head(nycflights13::flights)

summary(distance)
describe(distance)

demo <- cbind(arr_delay, dep_delay, distance)
describe(demo)
data()

colnames(demo) <- c('Arrival delay', 'Departure Delay', 'Distance Travelled')
describe(demo)
#introdicing the hist function
dep_delay
hist(dep_delay)
head(nycflights13::flights)
carrier
summary(carrier)
carrierfact = factor(carrier)
summary(carrierfact)
describeBy(distance,group = carrier)
aggregate(distance,by = list(carrier,month),FUN=mean,na.rm=TRUE)
aggregate(distance,by = list(carrier,month),FUN=sd,na.rm=TRUE)

