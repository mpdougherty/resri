% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/arc2sf.R
\name{arc2sf}
\alias{arc2sf}
\title{Converts ArcGIS feature class to an \code{sf} object}
\usage{
arc2sf(fc_path)
}
\arguments{
\item{fc_path}{character; Path to the ArcGIS geodatabase feature class.}
}
\value{
The specified ArcGIS feature class as an \code{sf} object.
}
\description{
Opens an ArcGIS feature class and converts it to the \code{sf}
    spatial data format.
}
\details{
The \code{arc2sf} function requires the prior installation of the
\code{arcgisbinding} package AND a licensed installation of ESRI
\code{ArcGIS Desktop} or \code{ArcGIS Pro}. The \code{arcgisbinding}
package can be installed from within \code{ArcGIS Pro} or by following the
instructions at
\url{https://r-arcgis.github.io/assets/arcgisbinding-vignette.html} for
\code{ArcGIS Desktop} users.
}
\references{
\describe{
  \item{ESRI ArcGIS Desktop, ArcGIS Pro}{\url{https://pro.arcgis.com/}}
  \item{\code{arcgisbinding}}{
  \url{https://r-arcgis.github.io/assets/arcgisbinding-vignette.html}}
}
}
\seealso{
The \code{\link{sf2arc}} function for saving data back to an ESRI
spatial dataset.
}
