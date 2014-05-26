### R code from Chapter 4



###################################################
### code chunk number 5: chLossFunction.Rnw:327-328
###################################################
0.001/0.5



###################################################
### code chunk number 7: chLossFunction.Rnw:356-358
###################################################
curve(0.002 * (x - 10)^2, 9, 11,
	lty = 1, 
	lwd = 2,
	ylab = "Cost of Poor Quality",
	xlab = "Observed value of the characteristic",
	main = expression(L(Y) == 0.002 ~ (Y - 10)^2))
abline(v = 9.5, lty = 2)
abline(v = 10.5, lty = 2)
abline(v = 10, lty = 2)
abline(h = 0)
text(10, 0.002, "T", adj = 2)
text(9.5, 0.002, "LSL", adj = 1)
text(10.5, 0.002, "USL", adj = -0.1)


###################################################
### code chunk number 9: chLossFunction.Rnw:412-413
###################################################
0.002*(sum((ss.data.bolts$diameter-10)^2))/length(ss.data.bolts$diameter)


###################################################
### code chunk number 10: chLossFunction.Rnw:432-434
###################################################
100000 * 0.002 * (sum((ss.data.bolts$diameter - 10)^2))/
	length(ss.data.bolts$diameter)


###################################################
### code chunk number 12: chLossFunction.Rnw:525-526
###################################################
ss.lfa(ss.data.bolts, "diameter", 0.5, 10, 0.001, 
	lfa.sub = "10 mm. Bolts Project", 
	lfa.size = 100000, lfa.output = "both")
