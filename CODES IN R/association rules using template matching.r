p<-read.csv(file.choose())
df<-data.frame(p)
df$N<-cut(df$N,br=c(0,40,80,100,200,400),labels=c("low","bavg","avg","aavg","high"))
df$P<-cut(df$P,br=c(0,40,80,100,200,400),labels=c("low","bavg","avg","aavg","high"))
df$K<-cut(df$K,br=c(0,40,80,100,150,200),labels=c("low","bavg","avg","aavg","high"))
df$area<-cut(df$area,br=c(0,5,10),labels=c("less","more"))
df$rainfall<-cut(df$rainfall,br=c(0,50,100,150,200),labels=c("low","avg","aavg","high"))
df$temperature<-cut(df$temperature,br=c(0,20,25,30,35,50),labels=c("low","bavg","avg","aavg","high"))
df$production<-cut(df$production,br=c(0,200,400,600,800,1000),labels=c("low","bavg","avg","aavg","high"))
df$distance<-cut(df$distance,br=c(0,100,200,300,400,500),labels=c("low","bavg","avg","aavg","high"))


rules <- apriori(df)
rules

#rules <- apriori(Adult, parameter = list(support=0.2, confidence = 0.5), 
                 #appearance = list(rhs = incomeItems))
inspect(head(rules))
rules1<-apriori(df,parameter=list(minlen=2,maxlen=20,support=0.05,confidence=0.1),appearance=list(rhs=c("prediction.of.profit.loss=H"),default="lhs"))
?apriori
rules1
inspect(rules1)
inspect(subset(rules1,subset=lhs %pin% "crop="))
?apriori
is.factor(df$prediction.of.profit.loss)
?inspect


library(arulesViz)
install.packages("arulesViz")
plot(rules1)
plot(rules1,method="grouped")






