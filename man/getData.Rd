% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getData.R
\name{getData}
\alias{getData}
\title{Download data from xrepository}
\usage{
getData(identifier, simplify = T)
}
\arguments{
\item{identifier}{The identifier ("kennung")}

\item{simplify}{\code{logical} Should a \code{data.frame} be returned.}
}
\value{
If \code{simplify} is \code{true}, a data.frame of the codelist with additional information such as metadata as attributes. OTherwise a list.
}
\description{
Download data from xrepository
}
\examples{
id <- "urn:de:bund:destatis:bevoelkerungsstatistik:schluessel:staatsangehoerigkeit"
validVersion <- getValidVersion(id)
print(validVersion)
getMetaData(validVersion)
}
