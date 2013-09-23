# qcc packages

install.packages("qcc")
library(qcc)

###################################################################################
# series of value w/ mean of 10 with a little random noise added in
x <- rep(10, 100) + rnorm(100)

# a test series w/ a mean of 11
new.x <- rep(11, 15) + rnorm(15)

# qcc will flag the new points
qcc(x, newdata=new.x, type="xbar.one")

###################################################################################
# Piston Rings Data
data(pistonrings)
attach(pistonrings)

diameter <- qcc.groups(diameter, sample)
q <- qcc(diameter[1:25,], type="xbar", nsigmas=3, plot=FALSE)
cusum(q)

q <- qcc(diameter[1:25,], type="xbar", newdata=diameter[26:40,], nsigmas=3, plot=FALSE)
cusum(q)

cusum(q, chart.all=FALSE)
cusum(qcc(diameter, type="xbar", nsigmas=3, target=74, std.dev=0.02, plot=FALSE))
