 # http://www.jstatsoft.org/v47/i07/paper
 library("MPCI")
 data("dataset1")
 x <- dataset1
 Target <- c(30, 70, 15, 12, 120)
 LSL <- c(24, 60, 10, 8, 100)
 USL <- c(36, 80, 20, 16, 140)
 alpha <- 0.0027
 mpci(index = "shah", x, LSL, USL, Target, alpha)

#########################################

 data("dataset2")
 x <- dataset2
 alpha <- 0.0027
 Target <-c(177,53)
 LSL <- c(112.7, 32.7)
 USL <- c(241.3,73.3)
 mpci(index = "taam", x, LSL, USL, graphic = TRUE)
 
########################################

 data("dataset2")
 x <- dataset2
 alpha <- 0.0027
 Target <- c(177,53)
 LSL <- c(112.7, 32.7)
 USL <- c(241.3, 73.3)
 mpci(index = "taam", x, LSL, USL)
