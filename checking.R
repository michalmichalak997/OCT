library(dplyr)
library(ggplot2)

tabela<-read.csv(file="F:/FREIBERG/test.txt", header = T, sep = ";", dec="." )

#Clustering
grupowanie<-kmeans(x = dplyr::select(tabela, c("X_N", "Y_N", "Z_N")), centers = 4)

#Cluster centers
centers<-grupowanie$centers

centers

#Adding clustering labels to data frame
tabela$clusterlabel<- grupowanie$cluster

#Working on aggregated data
cluster_summary <- tabela %>%
  group_by(clusterlabel) %>%
  summarize(
    mean_xn=mean(X_N),
    mean_yn=mean(Y_N),
    mean_zn=mean(Z_N),
  )
cluster_summary_df<- as.data.frame(cluster_summary)

#Visualization

ggplot(data = tabela)+
  geom_point(aes(x=Y_C, y=X_C, col=factor(clusterlabel)), size=0.05)

tiff(file = "clustering.tiff", units="in", width = 10, height=10, res=300)
ggplot(data = tabela)+
  geom_point(aes(x=Y_C, y=X_C, col=factor(clusterlabel)), size=0.7)
dev.off()

