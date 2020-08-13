workingset2 <- workingset
workingset2$Date <- as.Date(workingset2$Date, format="%d/%m/%Y")
workingset2$Time <- strptime(paste(workingset2$Date, workingset2$Time), format="%Y-%m-%d %H:%M:%S")
png(filename = "/Users/vasudok/R Programming/Coursera R/EDAProject1/plot2.png")
with(workingset2, plot(Time, Global_active_power, 
                         type="l",
                         ylab="Global Active Power (in kilowatts)",
                         cex.lab=0.7, cex.axis=0.8))
dev.off()