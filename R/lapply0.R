#' Behaves just as \code{\link{lapply}}, but will ALWAYS return a vector
#'
#' Takes lists or vectors as input. lapply always returns a list, lapply0 will
#' always return a vector, like unlist(lapply(X, f)).
#'
#' @param X A vector or list as inout
#' @param f A function applied to X
#' @param ... additional params to f. Not yet implemented.
#'
#' @export
lapply0 = function(X, f, ...){
  return(unlist(lapply(X, f, ...)))
}
