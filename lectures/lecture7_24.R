d1 <- read.csv("2013_incarceration_fixed.csv")
d2 <- read.csv("2013_population_race_fixed.csv")
total_black <- d2$Population[d2$Race == 'Black']
incarcerated_black <- sum(d1$Number.Incarcerated[d1$Race == 'Black'])
incarcerated_black/total_black


raven <- c('enchanted', 'if', 'of', 'raven', 'sorrow', 'perch', 'echo', 'stronger', 'chamber', 'this',
         'grew', 'blinding', 'seeming', 'devil', 'said', 'the', 'decorum', 'explore', 'door',
         'nevermore', 'nothing', 'dream', 'mortal', 'pallid', 'noew', 'door', 'something',
         'bat', 'seraphim', 'mystery', 'floating', 'melancholy', 'quoth', 'within', 'evil',
         'name', 'distinctly')

girls <- c(5, 5+1/12, 5+1/12)
guys <- c(5+7/12, 5 + 10/12, 5 + 10/12)

guys2 <- c(5 + 7/12, 5 + 8/12, 5 + 7/12, 6.25, 5 + 9/12)
girl <- c(5 + 1/12)
