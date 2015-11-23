# Example 4.1

 par(mfrow = c(3,2))
 for( i in 1 : ncol(bimetal1) )
  {
    x <- bimetal1[,i]
    xbar<-mean(bimetal1[,i])
    std<-sd(bimetal1[,i])
    hist(x, prob = TRUE, 
    main = paste( "Histogram for ", colnames(bimetal1)[i] ),
    xlab = "")

    points(curve(dnorm(x, mean = xbar, sd = std), 
    add = TRUE),
    type = "l")
  }
#################

### Example 4.2

 par(mfrow = c(3,2))
 for( i in 1 : ncol(bimetal1) )
 {
   qqnorm(bimetal1[,i], 
   main = paste( "Q-Q plot for ", colnames(bimetal1)[i] ) )
   qqline(bimetal1[,i])
 }


### Example 4.3
library(MSQC)
for (i in 1 : 5){
 DAGOSTINO(bimetal1[,i])
 }


### Example 4.6
MardiaTest(bimetal1)

### Example 4.7
HZ.test(bimetal1)

### Example 4.8
Royston.test(bimetal1)

### Example 4.9
HZ.test(rskewed)

#######################

library("car")
rskewed.bct <- matrix(0,nrow(rskewed),ncol(rskewed))

for (i in 1 : 2){
 lambdas <- powerTransform(rskewed[,i])$lambda
 rskewed.bct[,i] <- bcPower(rskewed[,i],lambdas)
}
# Then, applying the MVN test
 HZ.test(rskewed.bct)
 Royston.test(rskewed.bct)

######################

 f1 <- faithful[,2]
 f2 <- matrix(0, 1, length(f1))
 for (i in 1 : length(f1))
  {
  f2[i] <- f1[i + 1]
  }
 plot(f1, f2, xlab = "x(t)", ylab = "x(t + 1)")
