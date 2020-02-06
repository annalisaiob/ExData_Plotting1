# get cleaned dataset

source("clean_data_subset.R")

#start plotting (Plot 2)
par(mfrow = c(1, 1))

plot(new_f$DateTime, new_f$Global_active_power, "l", ylab = "Global active power (kilowatts)",
     xlab = NA)

dev.copy(png, width = 480, height = 480, file = "plot2.png")
dev.off()