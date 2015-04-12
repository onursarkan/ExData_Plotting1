# By this function, data is loaded to computer memory
loading_data <- function() {
  # File is read.
  x <- read.table("household_power_consumption.txt",header=TRUE,sep=";",colClasses=c("character","character",rep("numeric",7)),na="?");
  # Convert date,time variables, and return Just two days data:
  x$Time <- strptime(paste(x$Date,x$Time),"%d/%m/%Y %H:%M:%S");
  x$Date <- as.Date(x$Date,"%d/%m/%Y");
  y <- subset(x,Date %in% as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d"));
  return(y);
}