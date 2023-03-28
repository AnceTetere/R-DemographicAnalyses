#Basic operations with a data frame
stats[1:10, ] #subsetting
stats[3:9, ]

#Remember hoe the [] work:
is.data.frame(stats[1, ]) #no need for drop=F

stats[, 1]
is.data.frame(stats[, 1]) #FALSE

stats[ , 1, drop = F]
is.data.frame(stats[ , 1, drop = F]) #TRUE

#multiply columns
head(stats)
stats$Birth.rate * stats$Internet.users
stats$Birth.rate + stats$Internet.users

#add column
head(stats)
stats$MyCalc <- stats$Birth.rate * stats$Internet.users

stats$xyz <- 1:5
head(stats, 10)

stats$xyz <- 1:4  #Error

#remove a column
stats$MyCalc <- NULL
stats$xyz <- NULL
head(stats)