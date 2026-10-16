install.packages("leaps")
install.packages("www.xquartz.org")



library(ISLR)
library(leaps)

fix(Hitters)
names(Hitters)
dim(Hitters)
sum(is.na(Hitters$Salary))

Hitters=na.omit(Hitters)
dim(Hitters)
sum(is.na(Hitters))

regfit.full=regsubsets(Salary~.,Hitters)
summary(regfit.full)

regfit.full=regsubsets(Salary~.,data=Hitters,nvmax=19)
reg.summary=summary(regfit.full)

names(reg.summary)

reg.summary$rsq

par(mfrow=c(2,2))
plot(reg.summary$rss,xlab="Number of VARIABLES",ylab="RSS",type="l")
plot(reg.summary$adjr2,xlab="Number of Variables", ylab="Adjusted RSq",type="l")








