#' Dropdown Filter Example
#'
#' @param flower value in \code{unique(iris$Species)}
#'
#' @return ggplot object
#' @export
#'
#' @import ggplot2
#'
#' @examples
#' dropdown_to_filter("setosa")
#' # Code
#' dropdown_to_filter
dropdown_to_filter <- function(flower) {
  subiris <- iris[iris$Species == flower, ]
  ggplot(subiris, aes(x = Sepal.Length, y = Petal.Length)) +
    geom_point(color = "#F00000") +
    ggtitle(paste("Sepals and Petals of Species ", flower))
}
