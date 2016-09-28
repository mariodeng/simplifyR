#' Tail for data frames
#'
#' Behaves just as \code{\link{tail}}, but respects the column size of the data
#' frame / matrix as well.
#'
#' If given df is wheter a data frame nor a matrix, default tail is called.
#'
#' @param Any R object
#' @param n number of rows to show, default: 4
#' @param m number of columns to show, default: 4
#'
#' @export
tail0 = function(df, n = 4, m = 4){
  if(!is.data.frame(df) && !is.matrix(df))
    return(tail(df))
  return(df[(nrow(df)-(n-1)):nrow(df), (ncol(df)-(m-1)):ncol(df)])
}
