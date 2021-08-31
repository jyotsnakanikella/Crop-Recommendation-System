data<-read.csv(file.choose())

df<-data[,c(3,4,5,8,12,13,14)]
result <- kmeans(df,4);
result
plot(df[c("area","production")],col=result$cluster)
result$cluster
legend("topleft",inset=0.01,legend=c("cluster1","cluster2","cluster3","cluster4"),col=(1:4),lty=1,horiz=F)
library("ggpubr")
ggscatter(df, x = "area", y = "production", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "area(in hectares)", ylab = "production")

data1<-data
str(df)
data1<-myfunction(data1,"Rabi","Rice",90,70,50,"NULL","CFL",15000,"T","canal irrigation","black",150,35,10000,"M")
myfunction<-function(da,a,b,c,d,e,f,g,h,i,j,k,m,n,q,s){
  l<-nrow(da)
  da[l+1,1]<-a
  da[l+1,2]<-b
  da[l+1,3]<-c
  da[l+1,4]<-d
  da[l+1,5]<-e
  da[l+1,6]<-f
  da[l+1,7]<-g
  da[l+1,8]<-h
  da[l+1,9]<-i
  da[l+1,10]<-j
  da[l+1,11]<-k
  da[l+1,12]<-m
  da[l+1,13]<-n
  da[l+1,14]<-q
  da[l+1,15]<-s
  
  return(da)
}
tail(data1)

g1<-data1[,c(3,4,5,8,12,13,14)]
g2<-kmeans(g1,4)
g2
plot(g1[c("area","production")],col=g2$cluster)
g2$cluster
library("ggpubr")
#ggscatter(data1, x = "area", y = "production", 
#          add = "reg.line", conf.int = TRUE, 
 #         cor.coef = TRUE, cor.method = "pearson",
  #        xlab = "area(in hectares)", ylab = "production")

legend("topleft",inset=0.01,legend=c("cluster1","cluster2","cluster3","cluster4"),col=(1:4),lty=1,horiz=F)
