d <- read.csv('class_data_complete.csv')
d$height <- d$Height..ft. + d$Height..in./12

# 1
boxplot(d$height ~ d$Shoe.Gender)

# 3
# Count the number of women in the class
women <- length(d$height[d$Shoe.Gender == 'w'])
# Count the number of women who are shorter than 5'4"
# and divide by the number of women
length(d$height[d$height <= 5 + 1/3 & d$Shoe.Gender == 'w']) / women

# 4
quantile(d$height[d$Shoe.Gender == 'm'], .75) # 3rd quartile of the boys
max(d$height[d$Shoe.Gender == 'w']) # Idara

# Would Pearson be an outlier?
quantile(d$height[d$Shoe.Gender == 'w'], .75) + 
  (quantile(d$height[d$Shoe.Gender == 'w'], .75) - quantile(d$height[d$Shoe.Gender == 'w'], .25))*1.5
