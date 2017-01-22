
#MATH 5302 STATISTICAL METHODS
#FINAL PROJECT

#NEERAJA GOPAL
#1001119411

#QUESTION 3

setwd("C:/Users/Neeraja/Documents/R")
var=read.table("Disease Data Set.txt",header=T)
#Part b
p_duration=var$Disease_duration
improve=var$Improvement
plot(p_duration,improve,xlab=("Disease Duration in years"),ylab=("Percent Improvement"),main="Plot to check linearity",col="blue")
a=lm(improve~p_duration,data=var)
summary(a)
#Assumptions
#Homogenous Variance
res=a$residuals
res
fit=a$fitted.values
fit
plot(fit,res,ylab="Residual Values",xlab="Fitted Values",main="Test for Homogenous Variance")
#Normality
qqnorm(res,ylab="Residual Values")
qqline(res)
#Independence of Residuals
plot(res,ylab="Residual Values",xlab="Ordered data",main="Test for Independence of Residual Values")


