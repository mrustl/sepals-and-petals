#' Number to Sample Size Examle
#'
#' @param n a number
#'
#' @return a plot
#' @export
#'
#' @examples
#' number_to_sample(42)
#' # Code
#' number_to_sample
number_to_sample <- function(n) {
  hist(rnorm(n = n))
}
