% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ltdb-variables.R
\name{make_ltdb_variables}
\alias{make_ltdb_variables}
\title{Make A Tibble of The Project's US Census Variables from LTDB}
\usage{
make_ltdb_variables(ltdb_data, acs_tables, census_geography_metadata, cpi,
  variable_template)
}
\arguments{
\item{ltdb_data}{Tibble, desc}

\item{acs_tables}{Tibble, desc}

\item{census_geography_metadata}{desc}

\item{cpi}{desc}

\item{variable_template}{Tibble, desc}
}
\value{
a \code{tibble}
}
\description{
Return a \code{tibble} of all of the US Census data variables
that are obtained from the Brown University Longitudinal Tract Database (LTDB).
}
