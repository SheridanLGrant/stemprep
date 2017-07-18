d <- read.csv('class_data_complete.csv')
head(d)
d$height <- d$Height..ft. + d$Height..in./12
hist(d$height)
hist(d$height, breaks = seq(4.5, 6.5, .2))

hist(d$height[d$Shoe.Gender == 'm'], breaks = seq(4.5, 6.5, .2))
hist(d$height[d$Shoe.Gender == 'w'], breaks = seq(4.5, 6.5, .2))

boxplot(men = d$height[d$Shoe.Gender == 'm'], women = d$height[d$Shoe.Gender == 'w'])
boxplot(height ~ Shoe.Gender, data = d)
