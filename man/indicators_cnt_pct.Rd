% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make-indicators-cnt-pct.R
\name{make_indicators_cnt_pct}
\alias{make_indicators_cnt_pct}
\alias{make_indicators_cnt_pct_acs_chas}
\alias{make_indicators_cnt_pct_value}
\alias{make_indicators_cnt_pct_sales}
\title{Make The Count Indicators}
\usage{
make_indicators_cnt_pct(indicators_cnt_pct_acs_chas, indicators_cnt_pct_value,
  indicators_cnt_pct_sales, indicator_template)

make_indicators_cnt_pct_acs_chas(acs_variables, hud_chas_variables,
  county_community_tract_all_metadata, community_metadata)

make_indicators_cnt_pct_value(parcel_value_variables, parcel_tract_overlay,
  county_community_tract_all_metadata, community_metadata)

make_indicators_cnt_pct_sales(parcel_sales_variables, parcel_tract_overlay,
  county_community_tract_all_metadata, community_metadata)
}
\arguments{
\item{indicators_cnt_pct_acs_chas}{desc}

\item{indicators_cnt_pct_value}{desc}

\item{indicators_cnt_pct_sales}{desc}

\item{indicator_template}{desc}

\item{acs_variables}{desc}

\item{hud_chas_variables}{desc}

\item{county_community_tract_all_metadata}{desc}

\item{community_metadata}{desc}

\item{parcel_value_variables}{desc}

\item{parcel_tract_overlay}{desc}

\item{parcel_sales_variables}{desc}
}
\value{
a \code{tibble}
}
\description{
Make the ACS Inidcators related to a \emph{count} of a population.
An example of the type of indicator included in this object might be
the count of renter households, while the median rent price would \emph{not} be included.
}
