d <- read.csv('class_data_complete.csv')
d$height <- d$Height..ft. + d$Height..in./12

# 1
boxplot(d$height ~ d$Shoe.Gender)

# 3

# Count the number of women in the class
women <- length(d$height[d$Shoe.Gender == 'w'])

# Count the number of women who are as short or shorter than 5'4"
# and divide by the number of women
length(d$height[d$height <= 5 + 1/3 & d$Shoe.Gender == 'w']) / women

# Same but taller than 5'8"
length(d$height[d$height > 5 + 2/3 & d$Shoe.Gender == 'w']) / women

# How many girls 5'5" or taller?
tallGirls <- length(d$height[d$height >= 5 + 5/12 & d$Shoe.Gender == 'w'])
# Only one Idara, so the probability of choosing Idara given that he's picking
# a tall girl is
1 / tallGirls

length(d$height[d$height == 5 & d$Shoe.Gender == 'w' & d$State == 'HI']) / women

# 4
quantile(d$height[d$Shoe.Gender == 'm'], .75) # 3rd quartile of the boys
max(d$height[d$Shoe.Gender == 'w']) # Idara

# Would Pearson be an outlier?
quantile(d$height[d$Shoe.Gender == 'w'], .75) + 
  (quantile(d$height[d$Shoe.Gender == 'w'], .75) - quantile(d$height[d$Shoe.Gender == 'w'], .25))*1.5
