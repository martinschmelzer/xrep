#' Download meta data for xrepository content
#'
#' @param identifier The identifier ("kennung")
#' @return The identifier of the valid version of the codelist
#' @export
#' @examples
#' id <- "urn:de:bund:destatis:bevoelkerungsstatistik:schluessel:staatsangehoerigkeit"
#' getValidVersion(id)
getValidVersion <- function(identifier) {
  stopifnot(is.character(identifier))

  url <- sprintf("https://www.xrepository.de/api/codeliste/%s/gueltigeVersion", identifier)
  res <- httr::GET(url)
  out <- jsonlite::fromJSON(httr::content(res, as = "text", encoding = "UTF-8"))

  if(res$status_code == 404) {
    stop(out$meldung)
  }

  return(out$kennung)
}


