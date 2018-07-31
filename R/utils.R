#' @title A set of generic helpful functions
#' @description General purpose functions to make working in R easier.
#' @name utils
#' @import purrr
NULL

#' @rdname utils
#' @export
not_sfc <- function(x) !any(class(x) %in% 'sfc')

#' @rdname utils
#' @export
first_not_na <- function(x){
        if(all(sapply(x,is.na))){
                methods::as(NA,class(x))
                }else{
                x[!sapply(x,is.na)][1]
        }


}