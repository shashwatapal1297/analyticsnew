matrix(1:12,ncol = 3,byrow = TRUE)
mym=matrix(1:15,ncol = 3,byrow = FALSE)
mym
mym[,1]
mym[1:3,2:3]
colSums(mym)
rowSums(mym)
rowMeans(mym)
colMeans(mym)
marks=rnorm(60,mean = 60,sd=10)
marks
matrix(marks,ncol = 6,byrow = FALSE)
mya=array(1:24,dim = c(4,3,2))
myb=array(1:24,dim = c(2,3,4))
mya
myb
apply(mya,1,sum)
#data frame
rollno=c('MBA-01','MBA-02')
rollno=paste('MBA',1:60,sep = '-')
rollno
(name=paste('Student',1:60, sep = '-'))
df=data.frame(rollno,name)
df
gender=sample(c('M','F'),size = 60,replace = TRUE,prob = c(.4,.6))
table(gender)
prop.table(table(gender))
#?matrix
#?rowsum
?apply
df=data.frame(rollno,name,gender)
df
head(df,12)
tail(df,3)
#marks
marks=rnorm(60,mean=50,sd=10)
marks
floor(marks)
df=data.frame(rollno,name,gender,marks, stringsAsFactors = 'F')
df
head(df,3)
#str
?str
str(df)
summary(df)
df$gender=factor(df$gender)
str(df)
summary(df)
#grade
grade=sample(c('Good','Poor','Excellent'),size = 60,replace = T,prob = c(0.2,0.3,0.5))
table(grade)
grade=factor(grade,levels=c('Poor','Good','Excellent'),ordered='T')
grade
df=data.frame(rollno,name,gender,marks, stringsAsFactors = 'F',grade)
df
str(df)
summary(df)
dim(df)
aggregate(df$marks,by=list(df$gender),FUN=sum)
aggregate(df$marks,by=list(df$gender),FUN=mean)
aggregate(marks~gender+grade,data=df,FUN=mean)
df$marks2=runif(60,50,100)
head(df)
?runif
grade
gender
cbind(grade,gender)
aggregate(cbind(marks,marks2)~gender+grade,data=df,FUN=mean)
df
#filtering
df[df$gender=='M',]
df[df$gender=='M',1]
df[df$gender=='M',c(1,2,4)]
df[df$gender=='M',c('rollno','gender')]
df
