#installing the visualize package
install.packages("visualize")
library(visualize)
#visualize normal distribution
pnorm(-1.96)
visualize.norm(-1.96)
visualize.norm(1.96, section ="upper")
visualize.norm(stat = c(-1.96,1.96), section="bounded")
visualize.norm(stat = c(-1.96,1.96), section="tails")
visualize.norm(stat = c(-1,1), section="bounded")
visualize.norm(stat =77,mu=75,sd=1,section="upper")
visualize.norm(stat =77,mu=75,sd=1,section="lower")
pnorm(77, mean =75, sd =1)
