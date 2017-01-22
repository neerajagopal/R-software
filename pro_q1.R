#MATH 5302 STATISTICAL METHODS
#FINAL PROJECT

#NEERAJA GOPAL
#1001119411

#QUESTION 1

data=read.table("Cutaneous Melanoma Data Set.txt",header=T)#reading data
#Part a
lifetime=data$t #extracting the information about time from data
f=fivenum(lifetime) #five number summary that fives the minimum,Q1,Q2,Q3 and maximum
summary(f)
q=quantile(lifetime,type=6)
q
#Part b
boxplot(lifetime,range=1.5,col="red",main="Boxplot of Lifetime in years",xlab="Lifetime in years",horizontal=T)
#mtext("Maximum",side=1,line=7)
#Part c
qqnorm(lifetime,ylab="Lifetime in years",main="Q-Q Plot of Lifetime")
qqline(lifetime)
#Part d
data1=data[data$x==1,] #extracting the lifetime values for respective nodule values
data1
l1=length(data1$t) #calculating the number of p'atients in nodule 1
l1
#Part e
data2=data[data$x==2,]
data2
l2=length(data2$t)
l2
data3=data[data$x==3,]
data3
l3=length(data3$t)
l3
data4=data[data$x==4,]
data4
l4=length(data4$t)
l4
#Part f
#Testing for equivalence of the variances first between data set 1 and data set 2
var.test(x=data1$t,y=data4$t,alternative="two.sided",conf.level=0.95,ratio=1)
#From the above test we see that the variances are not equal, hence testing for two means
t.test(x=data1$t,y=data4$t,alternative="greater",mu=0,var.equal=FALSE,conf.level=0.95)
#Part g
#Testing for equivalence of the variances between data set 1(nodule 1) and data set 2 (nodule 2)
var.test(x=data1$t,y=data2$t,alternative="two.sided",conf.level=0.95,ratio=1)
#From the above test we see that the variances could be equal, hence testing for equivalence of the means with equal variances
t.test(x=data1$t,y=data2$t,alternative="greater",mu=0,var.equal=TRUE,conf.level=0.95)
#Testing for equivalence of the variances between data set 2(nodule 2) and data set 3(nodule 3)
var.test(x=data2$t,y=data3$t,alternative="two.sided",conf.level=0.95,ratio=1)
#From the above test the variances were found to be equal, hence testing for equivalence of the two means with equal variances
t.test(x=data2$t,y=data3$t,alternative="greater",mu=0,var.equal=TRUE,conf.level=0.95)
#Testing for equivalence of variances for data set 1(nodule 1) and data set 3(nodule 3)
var.test(x=data1$t,y=data3$t,alternative="two.sided",conf.level=0.95,ratio=1)
#From the above test the variances were found to be equal, hence testing for equivalence of the two means with equal variances
t.test(x=data1$t,y=data3$t,alternative="greater",mu=0,var.equal=TRUE,conf.level=0.95)
#Testing for equivalence of variances for data set 2(nodule 2) and data set 4(nodule 4)
var.test(x=data2$t,y=data4$t,alternative="two.sided",conf.level=0.95,ratio=1)
#From the above test the variances were found to be equal, hence testing for equivalence of the two means with equal variances
t.test(x=data2$t,y=data4$t,alternative="greater",mu=0,var.equal=TRUE,conf.level=0.95)
#Testing for equivalence of variances for data set 3(nodule 3) and data set 4(nodule 4)
var.test(x=data3$t,y=data4$t,alternative="two.sided",conf.level=0.95,ratio=1)
#From the above test the variances were found to be equal, hence testing for equivalence of the two means with equal variances
t.test(x=data3$t,y=data4$t,alternative="greater",mu=0,var.equal=TRUE,conf.level=0.95)











