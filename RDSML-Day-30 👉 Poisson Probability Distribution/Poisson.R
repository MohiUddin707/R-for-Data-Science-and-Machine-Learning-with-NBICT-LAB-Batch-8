#explaining poisson distribution by pbois
ppois(q=3, lambda = 5) - ppois(q=2,lambda = 5)
dpois(x=3,lambda=5)

n = seq(0,5)
n
y=dpois(x=n,lambda=5)
barplot(y)

library(visualize)
visualize.pois(stat=c(3,3), lambda=5,section ="bounded")
visualize.pois(stat=c(3,5), lambda=5,section ="tails")
grid(nx=NULL,ny=NULL,col="grey",lty="dotted")
