#' @title Converts an \code{sf} object to an ArcGIS feature class
#'
#' @description Converts an \code{sf} object to an ArcGIS feature class in
#'     the specified geodatabase feature class.
#'
#' @export
#' @param sp_object     \code{sf} object
#' @param fc_path       character; Path to the ArcGIS feature class.
#'
#' @return Writes the \code{sf} object to an ArcGIS feature class specified
#'     by path.
#'
#' @details The \code{sf2arc} function requires the prior installation of the
#' \code{arcgisbinding} package AND a licensed installation of ESRI
#' \code{ArcGIS Desktop} or \code{ArcGIS Pro}. The \code{arcgisbinding}
#' package can be installed from within \code{ArcGIS Pro} or by following the
#' instructions at
#' \url{https://r-arcgis.github.io/assets/arcgisbinding-vignette.html} for
#' \code{ArcGIS Desktop} users.
#'
#' @seealso The \code{\link{arc2sf}} function for loading data from and ESRI
#' spatial dataset.
#'
#' @references
#' \describe{
#'   \item{ESRI ArcGIS Desktop, ArcGIS Pro}{\url{https://pro.arcgis.com/}}
#'   \item{\code{arcgisbinding}}{
#'   \url{https://r-arcgis.github.io/assets/arcgisbinding-vignette.html}}
#' }
#'
sf2arc <- function(sf_object, fc_path) {
  # Convert the sf object to an sp opject
  sp_object <- sf::as(sf_object, 'Spatial')

  # Convert the sp object to an ArcGIS data object
  arcobj <- arcgisbinding::arc.sp2data(sp_object)

  # Write the ArcGIS object to a geodatabase feature class
  arcgisbinding::arc.write(data = arcobj, path = fc_path)
}
