# this is a test file
# for practicing branches in git 
# and practicing unit-testing

# load libraries
library(ggplot2)
library(roxygen2)
library(testthat)

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
