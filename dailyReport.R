# Title     : TODO
# Objective : TODO
# Created by: deepak
# Created on: 9/5/18

dailyCountInput = read.csv('Numbers - dailyCount.csv', header = TRUE)
dailyCountInput[,2:11] <- lapply(dailyCountInput[,2:11],function(dailyCountInput){as.numeric(gsub(",", "", dailyCountInput))})
dailyCountInput$Date = Sys.Date() #sets the system date as the date for these records



# --------------
# Write to csv
write.csv(dailyCount, file = "dailyCount.csv", row.names = FALSE)

#---------

#Create daily count dataframe
Instrument <- c('DATE', 'FLOW', 'All', 'UPI', 'WALLET', 'CC', 'DC', 'EXTERNAL_WALLET', 'EXTERNAL_VPA', 'PARTIAL', 'UNFULFILLED')
dailyCount <- data.frame(matrix(ncol = 11, nrow = 0))
colnames(dailyCount) <- Instrument

##

