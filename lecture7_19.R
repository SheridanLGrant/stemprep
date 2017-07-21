# Read Data into R
d <- read.csv("class_data_complete.csv")
d$Grade
d$height <- d$Height..ft. + d$Height..in. / 12

# Basic Graphs
hist(d$height)
boxplot(d$height)

# Subset
example <- c(1,3,5,7,9)
example[c(1,3,5)]
d$height[c(1,3,5)]
d$height[d$Grade == 8]
d$height[d$State == 'HI']

# 2 Boxplots
eighth <- d$height[d$Grade == 8]
eighth
seventh <- d$height[d$Grade == 7]
seventh
boxplot(seventh, eighth)
boxplot(d$height ~ d$Shoe.Size)
boxplot(d$height[d$State == 'HI'], d$height[d$State == 'TX'], d$height[d$State == 'USVI'], d$height[d$Shoe.Gender == 'FL'])

d$height[d$State == 'USVI' | d$Shoe.Size > 9]
