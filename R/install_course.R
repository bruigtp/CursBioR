#' Install workshop materials
#'
#' `install_course()` will install the workshop materials for the workshop in a new repository.
#' Curs aplicat de bioestadística amb R. Then, it will open a new RStudio
#' Project containing the files you'll need.
#'
#' @param destdir The path on your computer where you would like the workshop
#'   installed. By default, this will install somewhere conspicuous, like your
#'   desktop, although you can tell `install_course()` exactly where you want
#'   it to download.
#' @param session Integer belonging to the session number that you want to install.
#' @param overwrite logical indicating if the directory has to be overwritten or not.
#'
#' @export

install_course <- function(destdir = getOption("usethis.destdir"), session = NULL, overwrite = FALSE) {

  if(is.null(session)) {
    stop("A session number has to be specified")
  }

  #Create directory
  dir <- paste0(destdir, "/Session", session)

  if(dir.exists(dir) & !overwrite) {
    stop(paste0("This directory already exists: '", dir, "'. If you want to overwrite it set `overwrite = TRUE`."))
  }

  dir.create(dir)

  usethis::use_course(

    "bruigtp/curs_bioestadistica_R",

    destdir = dir

  )

}
