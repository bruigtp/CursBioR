#' Install workshop materials for the Applied Biostatistics Course with R.
#'
#' `install_course()` will install the workshop materials for the workshop in a new repository.
#'
#' @param destdir The path on your computer where you would like the workshop
#'   installed. By default, this will install somewhere conspicuous, like your
#'   desktop, although you can tell `install_course()` exactly where you want
#'   it to download.
#'
#' @export

install_course <- function(destdir = getOption("usethis.destdir")) {

  usethis::use_course(

    "bruigtp/curs_bioestadistica_R",

    destdir = destdir

  )

}
