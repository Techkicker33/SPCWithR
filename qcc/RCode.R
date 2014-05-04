# http://www.stat.unipg.it/luca/Rnews_2004-1-pag11-17.pdf


########################################################
# Process Capability

process.capability(obj,spec.limits=c(73.95,74.05))

process.capability.sixpack(obj,spec.limits=c(73.95,74.05),target= 74.01)




########################################################
# Pareto Chart
defect <- c(80, 27, 66, 94, 33)
names(defect) <-c("price code", "schedule date","supplier code", "contact num.","part num.")
pareto.chart(defect)
