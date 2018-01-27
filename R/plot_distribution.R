#' Plot Histogram of a Distribution
#'
#' @description This function uses non standard evaluation (NSE) to create a
#'     plot title.
#'
#' @param dist_f a quoted distribution function: rnorm, runif or rcauchy
#' @param ns how many numbers should be generated?
#' @param theme a quoted ggplot theme to be used
#' @param bins how many bins should be used in the histogram?
#' @param seed passed to \code{set.seed}
#'
#' @return histogram of a sample of samplesize \code{ns} from a distribution
#'     \code{dist_f} using ggplot \code{theme}
#' @export
#'
#' @importFrom magrittr %>%
#' @import datasets stats rlang ggplot2
#'
#' @examples
#' dist_hist("runif", ns = 100, theme = "theme_classic")
#' # Code
#' dist_hist
dist_hist <- function(dist_f,
                      ns = 1000,
                      theme = "theme_minimal",
                      bins = 30,
                      seed = 42) {
  dist_fs <- c("rnorm", "runif", "rcauchy")
  themes <- c("theme_bw", "theme_classic", "theme_minimal", "theme_light")

  stopifnot(dist_f %in% dist_fs & theme %in% themes)

  set.seed(seed = seed)

  q <- quo(
    data.frame(x = invoke(!! sym(dist_f),
                          .args = list(n = !! as.numeric(ns)))) %>%
      ggplot(aes(x = x)) +
      geom_histogram(bins = !! as.numeric(bins)) +
      invoke(!! sym(theme))
  )

  eval_tidy(q) + ggtitle(quo_text(q))
}
