#' Plot Sepals and Petals in Iris
#'
#' @param x value in \code{names(iris)[1:4]}
#' @param y value in \code{names(iris)[1:4]}
#'
#' @import ggplot2
#' @import datasets
#'
#' @return ggplot object
#' @export
#'
#' @examples
#' sepals_and_petals("Sepal.Length", "Petal.Length")
#' sepals_and_petals("Petal.Length", "Sepal.Length")
sepals_and_petals <- function(x, y) {
  ggplot(datasets::iris, aes_string(x = x, y = y, color = "Species")) +
    geom_point()
}
