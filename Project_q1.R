#MATH 5302 STATISTICAL METHODS
#FINAL PROJECT

#NEERAJA GOPAL
#1001119411

#QUESTION 1

data=read.table("Cutaneous Melanoma Data Set.txt",header=T)#reading data
#Part a
lifetime=data$t #extracting the information about time from data
f=fivenum(lifetime)
f
summary(f)
q=quantile(lifetime,type=6)
q
#Part b
boxplot(lifetime,range=1.5,col="red",main="Boxplot of Lifetime in years",xlab="Lifetime in years",horizontal=T)
#mtext("Maximum",side=1,line=7)
#Part c
qqnorm(lifetime,ylab="Lifetime in years",main="Q-Q Plot of Lifetime")
qqline(lifetime)







