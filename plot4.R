# get cleaned dataset

source("clean_data_subset.R")

#start plotting (Plot 4)

par(mfrow = c(2, 2), mar = c(5, 4, 2, 1)) 
# top left plot
plot(new_f$DateTime, new_f$Global_active_power, "l", ylab = "Global active power (kilowatts)",
     xlab = NA)
# top right plot
plot(new_f$DateTime, new_f$Voltage, "l", ylab = "Voltage", xlab = "datetime")

# bottom left plot
plot(new_f$DateTime, new_f$Sub_metering_1, "l", ylab = "Energy sub metering", 
   xlab = NA)
lines(new_f$DateTime, new_f$Sub_metering_2, col = "red")
lines(new_f$DateTime, new_f$Sub_metering_3, col = "blue")
legend("topright",inset = .02, lty = 1, col =c("black", "red","blue"), 
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), box.lty=0)

# bottom right plot 
plot(new_f$DateTime, new_f$Global_reactive_power, "l", ylab = "Global reactive power", 
     xlab = "datetime")

dev.copy(png,width = 480, height = 480, file = "plot4.png")
dev.off()