# Package local defaults
defaults <- list(
  style=Rcss(),
  class=NULL
)



##' Get/Set Default Rcssplot style sheet
##'
##' Set a default Rcssplot style sheet. This style sheet will be
##' applied in all functions of the Rcss family. See also related
##' function RcssGetDefaultStyle()
##' 
##' @rdname defaults
##' @param Rcss style sheet object (set NULL to remove default style)
##' @export
RcssSetDefaultStyle <- function(Rcss) {
  ## default style is remembered using the options/getOption system
  if (class(Rcss)=="Rcss") {
    defaults$style=Rcss
  }
}




#' @rdname  defaults
#' @export
RcssGetDefaultStyle <- function() {
  ## Dummy; does the same as a straight call to getOption().
  ## However, it provides an interface with an "Rcss" feel.
  ## Also, the user does not need to know the "RcssDeaultsStyle" label
  defaults$style
}


#' @rdname  defaults
#' @param class the default class
#' @export
RcssSetDefaultClass <- function(class) {
  ## default style is remembered using the options/getOption system
  defaults$class=class
}




#' @rdname  defaults
#' @export
RcssGetDefaultClass <- function() {
  ## Dummy; does the same as a straight call to getOption().
  ## However, it provides an interface with an "Rcss" feel.
  ## Also, the user does not need to know the "RcssDeaultsStyle" label
  defaults$class
}

