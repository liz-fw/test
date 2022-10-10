# this is a test file
# for practicing branches in git 

# load libraries
library(ggplot2)
library(roxygen2)

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

#' Raise a vector of values to a power
#' 
#' @param values A vector.
#' @param exponent A number.
#' @return A numeric vector.
#' @examples 
#' my_power_function(seq(1,10), 2)
#' my_power_function(seq(1,10), 3)
#' @export
my_power_function <- function(values, exponent) {
  output <- values^exponent
  return(output)
}

# test new power function
cubed <- my_power_function(x, 3)
df <- data.frame(cbind(x, cubed))
ggplot(aes(x=x, y=cubed), data=df) + geom_line()
