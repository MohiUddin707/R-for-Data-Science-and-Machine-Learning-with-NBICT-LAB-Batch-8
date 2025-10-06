#importing the dataset
housetasks = read.delim("housetasks.txt", row.names =1)

#contigency table can be visualized using the function 
#ballonplot(). This function draws a graphical matrix where
# each cell contains a dot whose size reflects the relative
#magnitude of the corresponding component

install.packages("gplots")
library("gplots")
as.matrix(housetasks)
dt = as.table(as.matrix(housetasks))
dt
balloonplot(t(dt), main = "Housetasks Visualization",
            label = F, show.margins = F, 
            xlab = "", ylab = "")
#It is also possible to visualized a contigency table
#as a mosaic plot. This can be done using the function 
# mosaicplot() from the built in R packages graphics

library("graphics")
mosaicplot(dt, shade = T,las=2, main ="Housetasks")
# Blue colors indicate that the observed value is
#higher than the expected values. Red color indicates
# that the observed value is lower than the expected value


#computing Chi Sqaure test in R
chisq = chisq.test(housetasks)
chisq

chisq$observed

chisq$expected
round(chisq$expected,2)









