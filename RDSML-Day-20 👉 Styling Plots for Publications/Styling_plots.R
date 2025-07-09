#styling plots for publications
library(ggplot2)
#install.packages("ggthemes")
library(ggthemes)
#install.packages("viridis")
library(viridis)

#sample data loading
df = mtcars
df$cyl = as.factor(df$cyl)
p=ggplot(df,aes(x=wt,y=mpg,color = cyl))+
  geom_point(size=3)+
  scale_color_viridis_d(name = "Cylinders")+
labs(
  title = "Fuel Efficiency by car weight",
     x="Weight(1000lbs)",
     y="Miles per galon"
  )+
  theme_classic(base_size =14,base_family = "serif")+
  theme(plot.title = element_text(face="bold",size =16,hjust=0.5),
        axis.title = element_text(face = "bold",size=14),
        axis.text = element_text(size=5),
        legend.position ="right",
        legend.text = element_text(12))
#saving the plot for publication
ggsave("publication_ggplot.png",p, width =6,height =4,dpi=300)
