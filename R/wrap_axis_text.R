#' A function
#'
#' @param add_space xxx
#' @param column yyy
#' @param num_text zzz
#' @importFrom ggplot2 geom_vline geom_hline scale_x_discrete
#' @import stringr
#' @importFrom scales wrap_format
#' @export

wrap_axis_text <- function(add_space = FALSE, column, num_text=0) {
  if(add_space == TRUE) {
    scale_x_discrete(labels = function(column) str_wrap(sub("\\s+$", "", gsub(paste0('(.{',num_text,'})'), '\\1 ', column)), width = num_text))
  } else {
    scale_x_discrete(labels = wrap_format(num_text))
  }
}
