# Get data frame from data source
getDF <- function() {
    df <- read.table(file = "./household_power_consumption.txt", header = TRUE,
                     sep = ";", na.strings = "?")
    df$DateTime <-  as.POSIXlt(paste(df$Date, df$Time), 
                               format = "%d/%m/%Y %H:%M:%S")
    df$Date <- as.Date(df$Date, format = "%d/%m/%Y")
    d1 <- as.Date("2007-02-01")
    d2 <- as.Date("2007-02-02")
    dates <- c(d1, d2)
    is.valid <- df$Date %in% dates
    df[is.valid, ]
}

