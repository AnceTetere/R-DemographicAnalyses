#load data
getwd()
setwd("C:\\MyComputer\\")
getwd()

data <- read.csv("Data.csv")
data

head(data)
tail(data)

str(data)
summary(data)

#insight
data$Year
temp <- factor(data$Year)
temp

#filter the data frame
data1960 <- data[data$Year == 1960, ]
data2013 <- data[data$Year == 2013, ]

#check row counts
nrow(data1960) #187 rows 
nrow(data2013) #187 rows. Equal split.

#create the additional dataframes
add1960 <- data.frame(Code=Country_Code, Life.Exp=Life_Expectancy_At_Birth_1960)
add2013 <- data.frame(Code=Country_Code, Life_Expectancy_At_Birth_2013)

#check summaries
summary(add1960)
summary(add2013)

#merge the pairs of dataframes
merged1960 <- merge(data1960, add1960, by.x="Country.Code", by.y="Code")
merged2013 <- merge(data2013, add2013, by.x="Country.Code", by.y="Code")

#check the new structures
str(merged1960)
str(merged2013)

#delete columns
merged1960$Year <- NULL
merged2013$Year <- NULL

#visualisations
library(ggplot2)

#visualize the 1960 dataset
qplot(data=merged1960, x=Fertility.Rate, y=Life.Exp,
      colour=Region, size=I(5), alpha=I(0.6),
      main="Life Expectancy vs Fertility (1960)")

#visualize the 2013 dataset
qplot(data=merged2013, x=Fertility.Rate, y=Life_Expectancy_At_Birth_2013,
      colour=Region, size=I(5), alpha=I(0.6),
      main="Life Expectancy vs Fertility (2013)")
