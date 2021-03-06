#' @title Converts ArcGIS feature class to an \code{sf} object
#'
#' @description Opens an ArcGIS feature class and converts it to the \code{sf}
#'     spatial data format.
#'
#' @export
#' @param fc_path      character; Path to the ArcGIS geodatabase feature class.
#'
#' @return The specified ArcGIS feature class as an \code{sf} object.
#'
#' @details The \code{arc2sf} function requires the prior installation of the
#' \code{arcgisbinding} package AND a licensed installation of ESRI
#' \code{ArcGIS Desktop} or \code{ArcGIS Pro}. The \code{arcgisbinding}
#' package can be installed from within \code{ArcGIS Pro} or by following the
#' instructions at
#' \url{https://r-arcgis.github.io/assets/arcgisbinding-vignette.html} for
#' \code{ArcGIS Desktop} users.
#'
#' @seealso The \code{\link{sf2arc}} function for saving data back to an ESRI
#' spatial dataset.
#'
#' @references
#' \describe{
#'   \item{ESRI ArcGIS Desktop, ArcGIS Pro}{\url{https://pro.arcgis.com/}}
#'   \item{\code{arcgisbinding}}{
#'   \url{https://r-arcgis.github.io/assets/arcgisbinding-vignette.html}}
#' }
#'
arc2sf <- function(fc_path) {
  # Open a connection to the specified ArcGIS feature class
  arcobj <- arcgisbinding::arc.open(fc_path)
  # Select the ArcGIS data
  arc <- arcgisbinding::arc.select(arcobj)
  # Convert the ArcGIS format to the sp format
  sf <- arcgisbinding::arc.data2sf(arc)
  return(sf)
}
