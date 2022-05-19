#' Download meta data for xrepository content
#'
#' @param identifier The identifier ("kennung")
#' @return The metadata as a list.
#' @export
#' @examples
#' id <- "urn:de:bund:destatis:bevoelkerungsstatistik:schluessel:staatsangehoerigkeit"
#' getMetaData(id)
getMetaData <- function(identifier) {
  stopifnot(is.character(identifier))
  url <- sprintf("https://www.xrepository.de/api/xrepository/%s", identifier)
  res <- httr::GET(url)
  out <- jsonlite::fromJSON(httr::content(res, as = "text"))

  if(res$status_code == 404) {
    stop(out$meldung)
  }

  return(out)
}

