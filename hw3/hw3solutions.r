# 1
sum(sqrt(1:10000))

# 2
min(tan(100:200))

# 3
mean(seq(1001,1999,2))

# 4
f <- function(x) {
  return(4*x^2 + 3*x + sqrt(x) + sin(x) + 7)
}

# 5
firstFive <- function(x) {
  if (length(x) < 5) {
    print("Oops! Vector too short.")
  } else {
    return(x[1:5])
  }
}

# 6
sumOdd <- function(n) {
  return(sum(seq(1,n,2)))
}

# 7
middle <- function(a,b,c) {
  if (((a <= b) & (a >= c)) | ((a <= c) & (a >= b))) {
    return(a)
  } else if (((b <= a) & (b >= c)) | ((b <= c) & (b >= a))) {
    return(b)
  } else {
    return(c)
  }
}
