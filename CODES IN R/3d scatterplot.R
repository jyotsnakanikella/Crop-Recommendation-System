data1<- read.csv(file.choose())
scatterplot3d(data1[,c(2,8,14)])

str(data1)
s3d<-scatterplot3d(data1[c(2,8,14)],pch=16,highlight.3d=TRUE,type="h",main="3D Scatterplot")
plane<-lm(data1$production~data1$area+data1$crop)
s3d$plane3d(plane)
data1$crop<-as.numeric(data1$crop)
install.packages("rgl")
library(rgl)
library(RColorBrewer)
plot3d(data1$crop,data1$area,data1$production,xlab="crop",ylab="area",zlab="production",col=brewer.pal(4,"Dark2")[unclass(data1$prediction.of.profit.loss)],size=8)
legend3d("center",c("cluster1","cluster2","cluster3","cluster4"),pch=c(1:16))

install.packages("car")
library(car)
library(lattice)

?legend3d

