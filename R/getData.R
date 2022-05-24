#' Download data from xrepository.de
#'
#' @param identifier The identifier ("kennung")
#' @param simplify \code{logical} Should a \code{data.frame} be returned.
#' @return If \code{simplify} is \code{true}, a \code{data.frame} of the codelist with additional information such as metadata as attributes. Otherwise a list.
#' @export
#' @examples
#' id <- "urn:de:bund:destatis:bevoelkerungsstatistik:schluessel:staatsangehoerigkeit"
#' validVersion <- getValidVersion(id)
#' print(validVersion)
#' getMetaData(validVersion)
getData <- function(identifier, simplify = T) {
  stopifnot(is.logical(simplify), is.character(identifier))

  url <- sprintf("https://www.xrepository.de/api/xrepository/%s/json", identifier)
  res <- httr::GET(url)
  content <- jsonlite::fromJSON(httr::content(res, as = "text", encoding = "UTF-8"))

  if(res$status_code == 404) {
    stop(content$meldung)
  }

  if (!simplify) {
    return (content)
  } else {
    cols <- content$spalten
    out <- stats::setNames(data.frame(content$daten), cols$spaltennameTechnisch)
    attr(out, "metadaten") <- content$metadaten
    attr(out, "spalten") <- content$spalten
    return(out)
  }
}
