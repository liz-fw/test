# this is a test file
# for practicing branches in git 

plot(seq(1:30), (seq(1:30)^2), type='l')

square <- function(x) {
  # inputs: x is a vector of values to be squared
  y <- x^2
  return(y)
}

# example:
x <- seq(1:10)
y <- square(x)
plot(x, y, type = 'l')
