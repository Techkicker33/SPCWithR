library("MPCI")
data("dowel1")
LSL <- c(0.47, 0.90); USL <- c(0.53, 1.10); Target <- c(0.50, 1.00)
# Note that the tolerances are entered by introducing a vector of lower
# specifications and the other of upper specifications.

 mpci(index = "shah", dowel1, LSL, USL, Target, graph = TRUE)

################

mpci(index = "taam", dowel1, LSL, USL, Target, graph = TRUE)

mpci(index = "pan", dowel1, LSL = LSL, USL = USL, graph = TRUE)

################

 p <- 3
 LSL <- c( 0.60, 0.30, 49.00); USL <- c(1.40, 1.70, 51.00); Target <- c(1.00,
1.00, 50.00)

 carbon <- matrix(c(carbon1[,1,], carbon1[,2,], carbon1[,3,]),ncol = 3)
 LPL <- proc.reg(carbon, alpha = 0.01)$LPL
 UPL <- proc.reg(carbon, alpha = 0.01)$UPL

# Computing the process region of the rational subgroups:
 x.jk <- apply(carbon1,1:2,mean)
 LPLm <- proc.reg(x.jk, alpha = 0.01)$LPL
 UPLm <- proc.reg(x.jk, alpha = 0.01)$UPL
 Center <- (UPLm + LPLm) /2

LSLm <- Target - (Target - LSL) * (Center - LPLm) / (Center - LPL)
USLm <- Target + (Target - LSL) * (Center - LPLm) / (Center - LPL)

CpM <- (prod(USLm - LSLm) / prod(UPL - LPL)) ^ (1 / p)

###################


library(rgl)
 larg.ellip(LSLm, USLm, n = 15, add = FALSE, box = FALSE ,xlim = c
        (0.80,1.150),ylim = c(0.65,1.5), zlim = c(49.5,50.5), xlab = "", ylab = "",
zlab = "", col = "#D55E00", alpha = 0.2)

 plot3d(ellipse3d(cov(x.jk), center = colMeans(x.jk), level = 0.99), type = "wire", col = 3, alpha = 0.2, add = TRUE)

 plot3d(x.jk, size = 4, cex = 2, box = FALSE, add = TRUE)
