stats
nrow(stats)
#Imported 195 rows

ncol(stats)
#Imported 5 columns

head(stats)
head(stats, n = 10)
tail(stats)
tail(stats, n = 10)

stats$Income.Group <- as.factor(stats$Income.Group)
str(stats) 

## 'str()' stands for 'structure'
## 'runif()'  stands for 'random variables distributed uniformly'
## 'rnorm()' r - stands for random + 'norm' stands for normally 

summary(stats)

# Using the $ sign
stats
head(stats)

stats[3, 3]
stats[3, "Birth.rate"]

stats$Internet.users
stats$Internet.users[2]
stats[ , "Internet.users"]

str(stats)
levels(stats$Income.Group)
