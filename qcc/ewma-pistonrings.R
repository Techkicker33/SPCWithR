##
## Grouped-data
##
data(pistonrings)
attach(pistonrings)
diameter <- qcc.groups(diameter, sample)
q <- ewma(diameter[1:25,], lambda=0.2, nsigmas=3)
summary(q)
q <- ewma(diameter[1:25,], lambda=0.2, nsigmas=2.7, newdata=diameter[26:40,], plot = FALSE)
summary(q)
plot(q)
##
## Individual observations
##
x <- c(33.75, 33.05, 34, 33.81, 33.46, 34.02, 33.68, 33.27, 33.49, 33.20,
33.62, 33.00, 33.54, 33.12, 33.84) # viscosity data (Montgomery, pag. 242)
q <- ewma(x, lambda=0.2, nsigmas=2.7)
summary(q)
