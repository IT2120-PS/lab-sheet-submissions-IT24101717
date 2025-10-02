setwd("C:\\Users\\dinul\\OneDrive\\Desktop\\IT24101717")
#i
set.seed(123)
sample_data <- rnorm(25, mean = 45, sd = 2)
sample_data

#ii
t.test(sample_data, mu = 46, alternative = "less")
