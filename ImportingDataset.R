#Method 1: Select the file manually
stats <- read.csv(file.choose())
stats

#Method 2: Set WD and read in data from there
getwd()
setwd("D:\\UDEMY TRAINING\\R-PROGRAMMING\\R-DemographicAnalyses")
getwd()

rm(stats)

stats <- read.csv("DemographicData.csv")
stats
