#Method 1: Select the file manually
stats <- read.csv(file.choose())
stats

rm(stats)

#Method 2: Set WD and read in data from there
getwd()
setwd("D:\\R-PROGRAMMING\\R-DemographicAnalyses")
setwd("D:\\UDEMY TRAINING\\R-PROGRAMMING\\R-DemographicAnalyses")
getwd()

stats <- read.csv("DemographicData.csv")
stats$Income.Group <- as.factor(stats$Income.Group)
stats
