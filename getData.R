#This script will generate the dataframe required for the followup scripts in the assignment
#to run the script at R terminal
#source("getData.R")
DF <- read.table("household_power_consumption.txt",header = T,sep=";",as.is =!default.stringsAsFactors(), na.strings="?",stringsAsFactors=default.stringsAsFactors())
DF$DDate <- as.Date(strptime(DF$Date,"%d/%m/%Y"))
DF$DateTime <- strptime(paste(DF$Date,DF$Time),"%d/%m/%Y %H:%M:%S")
date1 <- as.Date(strptime("2007-02-01","%Y-%m-%d"))
date2 <- as.Date(strptime("2007-02-02","%Y-%m-%d"))
DF <- DF[DF[,"DDate"]==date1 | DF[,"DDate"]==date2 ,]