### R code from Chapter 6




###################################################
### code chunk number 5: ceDiag
###################################################
b.effect <- "Delay"
b.groups <- c("Personnel", "Weather", 
		"Suppliers", "Planning")
b.causes <- vector(mode = "list", 
		length = length(b.groups))
b.causes[1] <- list(c("Training", "Inadequate"))
b.causes[2] <- list(c("Rain", "Temperature", "Wind"))
b.causes[3] <- list(c("Materials", "Delays", 
				"Rework"))
b.causes[4] <- list(c("Customer", "Permissions", 
				"Errors"))
ss.ceDiag(b.effect, b.groups, b.causes, sub = "Construction Example")



###################################################
### code chunk number 7: chPareto.Rnw:330-333
###################################################
b.data <- data.frame(cause=factor(unlist(b.causes)), 
		count = c(5,1,3,1,2,18,20,4,15,2,4),
		cost = c(50,150,50,10,20,180,200,10,5,20,150))


###################################################
### code chunk number 9: chPareto.Rnw:406-408
###################################################
pChart <- barplot(rev(sort(b.data$count)), 
		names.arg = b.data$cause[order(b.data$count, 
						decreasing = TRUE)],
		las = 2)
text(pChart,
	rep(0.5,11),
	sort(round(cumsum(100 * (b.data$count / sum(b.data$count))[order(b.data$count, decreasing = TRUE)]), 1)))



###################################################
### code chunk number 11: chPareto.Rnw:433-435
###################################################
library(qcc)
b.vector <- b.data$count
names(b.vector) <- b.data$cause
pareto.chart(b.vector, cumperc = c(80))



###################################################
### code chunk number 13: chPareto.Rnw:458-460
###################################################
require(qualityTools)
paretoChart(b.vector, 
	las = 2, 
	percentVec = c(0, 0.5, 0.80, 1))

