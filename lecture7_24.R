d1 <- read.csv("2013_incarceration_fixed.csv")
d2 <- read.csv("2013_population_race_fixed.csv")
total_black <- d2$Population[d2$Race == 'Black']
incarcerated_black <- sum(d1$Number.Incarcerated[d1$Race == 'Black'])
incarcerated_black/total_black


