fahr_to_celsius <- function(fahr) {
  celsius <- (fahr - 32) * 5 / 9
  
  return(celsius)
}

#' Convert Celsius temperature to Fahrenheit
#'
#' @param celsius Temperature in Celsius
#'
#' @return Temperature in Fahrenheit
#' @export
#'
#' @examples
celsius_to_fahr <- function(celsius) {
  fahr <- celsius * 9 / 5 + 32
  
  return(fahr)
}

fahr <- 80
celsius_to_fahr(fahr_to_celsius(fahr)) == fahr
