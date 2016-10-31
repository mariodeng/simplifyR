#' Head for data frames
#'
#' Behaves just as \code{\link{head}}, but respects the column size of the data
#' frame / matrix as well.
#'
#' If given df is wheter a data frame nor a matrix, default head is called.
#'
#' @param Any R object
#' @param n number of rows to show, default: 4
#' @param m number of columns to show, default: 4
#'
#' @export
head0 = function(df, n = 4, m = 4){
  if(!is.data.frame(df) && !is.matrix(df))
    return(head(df))
  if(nrow(df) < n)
    n = nrow(df)
  if(ncol(df) < m)
    m = ncol(df)
  return(df[1:n, 1:m])
}
