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


# for erin's review -------------------------------------------------------

# practicing a pull request
# adding a new function here to generalize the power function

my_power_function <- function(values, exponent) {
  # inputs are a vector of values and an exponent
  output <- values^exponent
  return(output)
}

# test new power function
cubed <- my_power_function(x, 3)
plot(x, cubed, type = 'l')
