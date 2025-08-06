#explaining rbinom(), generate random number
rbinom(n=10,size=1,prob =0.5)
rbinom(n = 10,size=5, prob = 0.5)

#explaining pbinom()
#pbinom gives the cumalative probability of getting q or fewer succes 
#in a binomial distribution
pbinom(q=10,size=10,prob=0.5)

pbinom(q=3,size=5,prob=0.5)-pbinom(q=2,size=5,prob=0.5)

#explaining qbinom
# what is the smallest number of successes x in 10 trials (with 50% success
# chance ) such that the probability of getting x or fewer
# success is at least 30%

qbinom(p=0.7, size= 10, prob = 0.5)

#explaining dbinom()
#calculating the probability of getting exactly number of success

dbinom(x=3,size=5,prob=0.5)

dbinom(x=3,size=10,prob=0.25)

