# get cleaned dataset

source("clean_data_subset.R")

#start plotting (Plot 1)
par(mfrow = c(1, 1))

hist(new_f$Global_active_power, col = 'red', main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", axes = F )
axis(1, at = seq(0,6, 2))
axis(2, at = seq(0,1200, 200))

dev.copy(png, width = 480, height = 480 ,file = "plot1.png")
dev.off()