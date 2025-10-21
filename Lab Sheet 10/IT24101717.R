setwd("C:\\Users\\dinul\\OneDrive\\Desktop\\IT24101717")
observe <- c(120,95,85,100)
prob <- c(.25, .25, .25, .25)

chisq.test(observe)
chisq.test(observe, p = prob)
