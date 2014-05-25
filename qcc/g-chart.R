success <- rbinom(1000, 1, 0.01)
num.noevent <- diff(which(c(1,success)==1))-1
qcc(success, type = "np", sizes = 1)
qcc(num.noevent, type = "g")
