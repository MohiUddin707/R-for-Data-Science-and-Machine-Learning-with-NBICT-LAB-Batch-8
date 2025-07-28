#rnorm
x=rnorm(10000)
mean(x)
sd(x)

y=rnorm(100,mean=100,sd=3)
y
mean(y)
sd(y)
# at z=0 the value of probability is 0.5
pnorm(-2)
pnorm(-1.96)
pnorm(1)-pnorm(-1)
#qnorm
qnorm(0.5)
qnorm(0.02)

#dnorm
# Y axis value for z = 
dnorm(0)
#lets use dnorm 