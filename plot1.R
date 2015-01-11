eda1_data_jf<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
eda1_data_jf$Date <- as.Date(eda1_data_jf$Date, format="%d/%m/%Y")
relevant_data <- subset(eda1_data_jf, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
relevant_data$Global_active_power<-as.numeric(relevant_data$Global_active_power)
hist(relevant_data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()

