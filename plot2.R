#read the 2 days
plot2<-read.table("household_power_consumption.txt",header=FALSE,sep=';',na.strings='?',skip=66637,nrows=69518-66638)
plot2$DT<-strptime(paste(plot2[,1],plot2[,2]),format="%d/%m/%Y %H:%M:%S")

#graficar en el GD
png('plot2.png', width = 480, height = 480, units = "px")
plot(plot2$DT,plot2[,3],main="",type="l",ylab="Global Active Power (kilowatts)",xlab="")
dev.off()
browseURL('plot2.png')