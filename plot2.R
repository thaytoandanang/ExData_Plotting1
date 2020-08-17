# import readdata.R
source("readdata.R")
# Plot #2
plot2 <- function( filename = "plot2.png") {
    # read data
    df <- getDF()
    # open png graphic device
    png(filename = filename)
    # set plot area
    plot(x = df$DateTime, 
         y = df$Global_active_power,
         ylab = "Global active power (kilowatts)",
         xlab = "",
         type = "n")
    lines(x = df$DateTime, 
          y = df$Global_active_power)
    dev.off()
}