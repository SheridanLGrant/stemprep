words <- scan("raven.txt", character())
words <- sapply(words, function(str) gsub("[[:punct:]]", "", str))
lengths <- sapply(words, nchar)
mean(lengths)
