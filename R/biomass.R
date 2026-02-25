#' Calculate Biomass Index
#'
#' Calculates biomass index from CPUE and area swept.
#'
#' @param cpue Numeric vector of CPUE values
#' @param area_swept Numeric vector of area swept (e.g., km²)
#' @param catch catch value numeric (passed to cpue)
#' @param effort effort value numeric (passed to cpue)
#' @param ... Additional arguments passed to `cpue()` when computing from
#'   catch and effort (e.g., `method`, `gear_factor`).
#' @param verbose Logical indicating whether to print processing messages (default is FALSE)
#' @return A numeric vector of biomass index values
#' @export
#'
#' @examples
#' salmon_cpue <- cpue(catch = 2, effort = 2)
#' biomass_index(cpue = salmon_cpue, area_swept = 5)
biomass_index <- function(
  cpue = NULL,
  area_swept,
  catch = NULL,
  effort = NULL,
  verbose = getOption("fishr.verbose", default = FALSE),
  ...
) {
  rlang::check_dots_used()
  if (verbose) {
    message("Processing ", length(cpue), " records")
  }
  if (is.null(cpue) && (!is.null(catch) && !is.null(effort))) {
    cpue <- cpue(catch, effort, ...)
  }
  cpue * area_swept
}
