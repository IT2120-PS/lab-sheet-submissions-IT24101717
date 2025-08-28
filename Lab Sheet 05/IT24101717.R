setwd("C:\\Users\\dinul\\OneDrive\\Desktop\\IT24101717")
Delivery_Times <- read.table("Data.txt", header = TRUE, sep = ",")

shareholder_hist <- hist(Delivery_Times$Number_of_Shareholders.thousands.,
                         breaks = seq(130, 270, length.out = 10),
                         right = FALSE,
                         main = "Histogram for Number of Shareholders",
                         xlab = "Number of Shareholders (thousands)")

freq <- shareholder_hist$counts
breaks <- shareholder_hist$breaks

cum_freq <- cumsum(freq)
ogive_data <- c(0, cum_freq)

dev.off()

plot(breaks, ogive_data,
     type = "b", # "b" plots both points and lines
     main = "Cumulative Frequency Polygon for Shareholders",
     xlab = "Number of Shareholders (thousands)",
     ylab = "Cumulative Frequency",
     ylim = c(0, max(cum_freq)))
