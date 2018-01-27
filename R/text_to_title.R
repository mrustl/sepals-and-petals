#' Text to Title Example
#'
#' @param plot_title Text.
#'
#' @return ggplot object
#' @export
#'
#' @import ggplot2
#'
#' @examples
#' text_to_title("My Title")
#' # Code
#' text_to_title
text_to_title <- function(plot_title) {
  ggplot(data.frame(x = 1:10), aes(x = x, y = x)) +
    geom_point() +
    ggtitle(plot_title)
}
