# Set Working Directory

# Read Data
d <- read.csv('class_data.csv')
d <- d[complete.cases(d),]
write.csv(d, 'class_data_complete.csv')

# Explore
mean(d$Shoe.Size[d$Grade == 8])
mean(d$Shoe.Size[d$Grade == 7])

quantile(d$Shoe.Size[d$Grade == 8], 0.5)
quantile(d$Shoe.Size[d$Grade == 7], 0.5)

hist(d$Shoe.Size[d$Grade == 8])
hist(d$Shoe.Size[d$Grade == 7])
