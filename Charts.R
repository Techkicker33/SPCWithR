
 X=rnorm(45,mean=599.98,sd=0.2)
 Y=rnorm(15,mean=600.2,sd=0.25)
 Z=c(X,Y)
 T=600
 plot(Z,type="b",col="red",ylim=c(mean(Z)-3.2*sd(Z),mean(Z)+3.2*sd(Z)),pch=18)
 abline(h=0)
 abline(h=mean(Z))
 abline(h=mean(Z)+3*sd(Z),col="green")
 abline(h=mean(Z)-3*sd(Z),col="green")


plot(cumsum(600-Z))
plot(cumsum(600-Z),type="b",col="red")
plot(cumsum(600-Z),type="b",col="red",pch=18)
abline(h=0)

