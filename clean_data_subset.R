### This dataset needs to be filtered (only two dates are part of the EDA), NAs need to be
### considered as such and date and time columns need to be convereted from character to 
### datetime objects. This script does that, saving the final dataset ready for analysis 
### into a dataframe called "new_f"

### this script assumes you are starting to work into the final "ExData_Plotting1" directory
### and that the data is saved into a folder one level up

# read table into R making sure that NAs are coded correctly
library(dplyr)
library(lubridate)
library(tidyr)

#col_names <-c(unique(strsplit( readLines("../exdata_data_household_power_consumption/household_power_consumption.txt", n= 1), ";")))[[1]]

file <- read.table("../exdata_data_household_power_consumption/household_power_consumption.txt", header = TRUE, sep = ';', 
                   na.strings = '?')

# create a subset with only the 2 dates wanted

subset_f <- subset(file, subset=(file$Date=="1/2/2007"|file$Date=="2/2/2007"))

# change Date field into date type
#new_f <- mutate(subset_f, New_Date = as.Date(f$Date, format= "%d/%m/%Y"))
new_f <- unite(subset_f, DateTime, c(Date, Time), sep= " ", remove = TRUE)
new_f$DateTime<-dmy_hms(new_f$DateTime)