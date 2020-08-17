# import readdata.R
source("readdata.R")
# Plot #3
plot3 <- function( filename = "plot3.png") {
    # read data
    df <- getDF()
    # open png graphic device
    png(filename = filename)
    # set plot area
    plot(x = df$DateTime, 
         y = df$Sub_metering_1,
         ylab = "Energy sub metering",
         xlab = "",
         type = "n")
    lines(x = df$DateTime, 
          y = df$Sub_metering_1, col = "black")
    lines(x = df$DateTime, 
          y = df$Sub_metering_2, col = "red")
    lines(x = df$DateTime, 
          y = df$Sub_metering_3, col = "blue")
    legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           col = c("black", "red", "blue"),
           lty = c(1 ,1, 1))
    dev.off()
}