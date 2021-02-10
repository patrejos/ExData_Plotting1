#read the 2 days
plot1<-read.table("household_power_consumption.txt",header=FALSE,sep=';',na.strings='?',skip=66637,nrows=69518-66638)
plot1[,1]<-as.Date(plot1[,1],format="%d/%m/%Y")

#graficar en el GD
png('plot1.png', width = 480, height = 480, units = "px")
hist(plot1[,3],col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()
browseURL('plot1.png')