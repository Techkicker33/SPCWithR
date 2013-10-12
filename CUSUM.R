data(pistonrings)
attach(pistonrings)
########################################

diameter <- qcc.groups(diameter, sample)
q <- qcc(diameter[1:25,], type="xbar", nsigmas=3, plot=FALSE)
cusum(q)

########################################
q <- qcc(diameter[1:25,], type="xbar", newdata=diameter[26:40,], nsigmas=3, plot=FALSE)
cusum(q)
cusum(q, chart.all=FALSE)

########################################
cusum(qcc(diameter, type="xbar", nsigmas=3, target=74, std.dev=0.02, plot=FALSE))
