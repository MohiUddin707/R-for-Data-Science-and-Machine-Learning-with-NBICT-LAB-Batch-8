#What is a uniform distribution?


#What is a normal distribution?


#Generating random numbers of uniform distribution
#Demonstration of CLT
#Generation of 10000 of random number
r = runif(1000)
hist(r)
meanr = mean(r)
sd = sd(r)
#draw three random samples from the distribution
samples1 = sample(r,4)
samples2 = sample(r,4)
samples3 = sample(r,4)
mean(samples1)
cl4 = mean(sample(r,4))

#CLT in R


#For loop in R
cl4 = mean(sample(r,100))
for(i in 1:1000)
{
  cl4 = c(cl4,mean(sample(r,100)))
}
hist(cl4)
