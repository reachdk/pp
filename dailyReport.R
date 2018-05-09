# Title     : TODO
# Objective : TODO
# Created by: deepak
# Created on: 9/5/18
dailyCount = read.csv('Numbers - dailyCount.csv', header = TRUE)
dailyCount[,2:11] <- lapply(dailyCount[,2:11],function(dailyCount){as.numeric(gsub(",", "", dailyCount))})
