d<-read.csv(file.choose())
data1<-d
str(data1)

m<-lm(prediction.of.profit.loss~crop+area+N+P+K+rainfall+temperature,data=data1)
summary(m)
s<-readline(prompt="enter season:")
Kharif
c<-readline(prompt="enter crop:")
Banana
n<-readline(prompt="enter N:")
70
n<-as.integer(n)
p<-readline(prompt="enter P:")
40
p<-as.integer(p)
k<-readline(prompt="enter K:")
20
k<-as.integer(k)
f<-readline(prompt="enter other fertilizers:")
FYM
b<-readline(prompt="enter brand:")
CFL
a<-readline(prompt="enter area:")
2
a<-as.integer(a)
ma<-readline(prompt="enter automation:")
T
i<-readline(prompt="enter irri_type:")
groundwater
so<-readline(prompt="enter soiltype:")
black
r<-readline(prompt="enter rainfall:")
100
r<-as.integer(r)
t<-readline(prompt="enter temperature:")
30
t<-as.integer(t)
pr<-readline(prompt="enter production:")
100
pr<-as.integer(pr)
d1<-readline(prompt="enter distance:")
60
d1<-as.integer(d1)
typeof(s)
x<-predict(m,data.frame("crop"=c,"N"=n,"P"=p,"K"=k,"rainfall"=r,"area"=a,"temperature"=t))
x
if((0<x)&&(x<=1.5)){
  x<-1
}else if((1.5<x)&&(x<=2.5)){
  x<-2
}else if((2.5<x)&&(x<=3.5)){
  x<-3
}else
  x<-4
x

tail(data1)
library(pracma)
thres<-20
count<-0
near<-3
n1<-nrow(data1)
for(i in 1:n1)
{
  result<-strcmpi(as.character(data1[i,2]),c)
  if(result)
  {
    d2<-abs(data1[i,16]-d1)
    if(d2<=thres)
      count<-count+1
    
  }
}
if(count>=near)
{
  if(x==4)
    x<-3
  else if(x==3)
    x<-2
  else if(x==2)
    x<-1
  else
    x<-1
  
}
x
tail(data1) 





