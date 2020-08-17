# import readdata.R
source("readdata.R")
# Plot #1
plot1 <- function( filename = "plot1.png") {
    # read data
    df <- getDF()
    # open png graphic device
    png(filename = filename)
    # plot histogram
    hist(x = df$Global_active_power,
         xlab = "Global active power (kilowatts)",
         ylab = "Frequency",
         main ="Global Active Power",
         col = "red")
    dev.off()
}