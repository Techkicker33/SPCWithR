# http://cran.r-project.org/web/packages/qualityTools/vignettes/qualityTools.pdf

# Quality Tools

#####################################################################
### http://r-qualitytools.org/Analyze.html
set.seed(1234)
#generate some data
d1 = rnorm(20, mean = 20)
#generate some data
d2 = rweibull(20, shape = 2, scale = 8)
#process capability
pcr(d1, "normal", lsl = 17, usl = 23)
 
#process cabapility
pcr(d2, "logistic", lsl = 1, usl = 20)
