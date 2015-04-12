source("loading_data.R")

# This is the histogram plot of Global_active_power:
plot1 <- function() {
  x <- loading_data();
  png("plot1.png",width=400,height=400)
  hist(x$Global_active_power,main="Global Active Power",xlab="Global Active Power(kilowatts)",ylab="Frequency",col="red")
  dev.off();
}
