#Basic operations with a data frame
stats[1:10, ] #subsetting
stats[3:9, ]
stats[c(4, 100), ]

is.data.frame(stats[1, ]) #no need for drop = FALSE
stats[ ,1]
is.data.frame(stats[, 1])

stats[ , 1, drop = F]
is.data.frame(stats[ , 1, drop = F])

#multiply columns
head(stats)
stats$Birth.rate * stats$Internet.users
stats$Birth.rate + stats$Internet.users

#add column
stats$MyCalc <- stats$Birth.rate * stats$Internet.users

#test of knowledge 
stats$xyz <- 1:5
head(stats, n = 10)

#remove a column
stats$MyCalc <- NULL
stats$xyz <- NULL
head(stats)