data(pistonrings)
attach(pistonrings)
summary(pistonrings)
pistonrings
################################################################
Reps<-rep(c("R1","R2","R3","R4","R5"),40)
Reps
SPCData <- data.frame(pistonrings,Reps)
SPCData
library(tidyr)
spread(SPCdata,Reps,diameter)
spread(SPCData,Reps,diameter)
SPCData <- spread(SPCData,Reps,diameter)
SPCData <- SPCData[,-1]
SPCData <- SPCData[,-1]
SPCData
jitter(SPCData)
matrix(rnorm(200),nrow=40)
SPCData + matrix(rnorm(200),nrow=40)
SPCData + matrix(rnorm(200),nrow=40)
SPCData + matrix(rnorm(200),nrow=40)
matrix(rnorm(200),nrow=40)
matrix(rnorm(200)/5,nrow=40)
matrix(rnorm(200)/5,nrow=40)
SPCData <- matrix(rnorm(200)/5,nrow=40)
SPCData
SPCData <- data.frame(pistonrings,Reps)
SPCData <- SPCData[,-1]
SPCData <- SPCData[,-1]
SPCData
SPCData <- data.frame(pistonrings,Reps)
spread(SPCData,Reps,diameter)
SPCData <- SPCData[,-1]
SPCData <- SPCData[,-1]
SPCData
SPCData <- data.frame(pistonrings,Reps)
SPCData <- spread(SPCData,Reps,diameter)
SPCData <- SPCData[,-1]
SPCData <- SPCData[,-1]
SPCData
SPC2 <- rbind(SPCData,SPCData,SPCData[1:20,])
SPC2
matrix(rnorm(500)/5,nrow=100)
SPC2+ matrix(rnorm(500)/5,nrow=100)
SPC3<-2*(SPC2+ matrix(rnorm(500)/5,nrow=100),3)
SPC3<-2*round(SPC2+ matrix(rnorm(500)/5,nrow=100),3)
SPC3
################################
SPC3=SPC3+2
SPC3
qcc(SPC3)

qcc(SPC3,xbar)
qcc(SPC3,"xbar")
SPC4<-2*round(SPC2+ matrix(rnorm(500)/4,nrow=100),3)
qcc(SPC4,"xbar")
SPC5<-2*round(SPC2+ matrix(rnorm(500)/3,nrow=100),3)
qcc(SPC4,"xbar")
SPC6<-2*round(SPC2+ matrix(rnorm(500)/2,nrow=100),3)
qcc(SPC5,"xbar")
qcc(SPC6,"xbar")
SPC6<-2*round(SPC2+ matrix(rnorm(500)/2,nrow=100),3)
qcc(SPC6,"xbar")
SPC6<-2*round(SPC2+ matrix(rnorm(500)/2,nrow=100),3)
qcc(SPC6,"xbar")
SPC6<-2*round(SPC2+ matrix(rnorm(500)/2,nrow=100),3)
qcc(SPC6,"xbar")
SPC6<-2*round(SPC2+ matrix(rnorm(500)/2,nrow=100),3)
qcc(SPC6,"xbar")
SPC6<-2*round(SPC2+ matrix(rnorm(500)/2,nrow=100),3)
qcc(SPC6,"xbar")
