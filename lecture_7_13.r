lilpump <- function(drose) {
  return(4*drose^2 + 3*drose + sqrt(drose) + sin(drose) + 7)
}

chicken <- function(mimishrek) {
  if (length(mimishrek) >= 5) {
    return(mimishrek[1:5])
  } else {
    print("Oh noes! Vector too short!")
  }
}