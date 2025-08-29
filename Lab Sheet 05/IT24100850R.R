setwd("C:\\Users\\IT24100850\\Desktop\\IT24100850")
getwd()


#1 
Delivery_Times <- read.table("Exercise - Lab 05.txt ",
                             header = TRUE,
                             sep = "",
                             stringAsFactors = FALSE)
head(Delivery_Times)
Delivery_Time_.minutes.
1                    34
2                    54
3                    47
4                    29
5                    39
6                    61

#2
hist(Delivery_Times$Delivery_Time_.minutes.,
     breaks = seq(20, 70, length.out = 10),   # 9 intervals
     right = FALSE,                         # right-open intervals [a,b)
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time (minutes",
     ylab = "Frequency",
     col = "skyblue",
     border = "black")

#4
times <- Delivery_Times$Delivery_Time_.minutes.
breaks <- seq(20, 70, length.out = 10)
freq <- hist(times, breaks = breaks, right = FALSE, plot = FALSE)
cum_freq <- cumsum(freq$counts)

plot(breaks[-1], cum_freq, type = "o", col = "blue", lwd = 2, pch = 16,
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency")

grid()



