#Merging Data Frames
head(stats)
head(mydf)

mergedDF <- merge(stats, mydf, by.x = "Country.Code", by.y = "Code")
head(mergedDF)

mergedDF$Country <- NULL
str(mergedDF)
tail(mergedDF)
