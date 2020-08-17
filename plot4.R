# import readdata.R
source("readdata.R")
# Plot #4
plot4 <- function( filename = "plot4.png") {
    # read data
    df <- getDF()
    # open png graphic device
    png(filename = filename)
    # set column, row with column-wise
    par(mfcol = c(2, 2))
    # (1,1)
    plot(x = df$DateTime, 
         y = df$Global_active_power,
         ylab = "Global active power (kilowatts)",
         xlab = "",
         type = "n")
    lines(x = df$DateTime, 
          y = df$Global_active_power)
    # (2, 1)
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
           lty = c(1 ,1, 1),
           bty = "n")
    # (1, 2)
    plot(x = df$DateTime, 
         y = df$Voltage,
         ylab = "Voltage",
         xlab = "datetime",
         type = "n")
    lines(x = df$DateTime, 
          y = df$Voltage)
    # (2,1)
    plot(x = df$DateTime, 
         y = df$Global_reactive_power,
         ylab = "Global_reactive_power",
         xlab = "datetime",
         type = "n")
    lines(x = df$DateTime, 
          y = df$Global_reactive_power)
    dev.off()
}