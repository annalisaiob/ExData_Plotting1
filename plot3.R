# get cleaned dataset

source("clean_data_subset.R")

#start plotting (Plot 3)
par(mfrow = c(1, 1))

plot(new_f$DateTime, new_f$Sub_metering_1, "l", ylab = "Energy sub metering", 
     xlab = NA)
lines(new_f$DateTime, new_f$Sub_metering_2, col = "red")
lines(new_f$DateTime, new_f$Sub_metering_3, col = "blue")
legend("topright", lty = 1, col =c("black", "blue","red"), 
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.copy(png, width = 480, height = 480, file = "plot3.png")
dev.off()