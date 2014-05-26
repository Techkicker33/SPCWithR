 # http://www.jstatsoft.org/v47/i07/paper
 library("MPCI")
 data("dataset1")
 x <- dataset1
 Target <- c(30, 70, 15, 12, 120)
 LSL <- c(24, 60, 10, 8, 100)
 USL <- c(36, 80, 20, 16, 140)
 alpha <- 0.0027
 mpci(index = "shah", x, LSL, USL, Target, alpha)
