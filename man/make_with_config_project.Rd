% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make-with-config-project.R
\name{make_with_config_project}
\alias{make_with_config_project}
\title{Make a (Congifured) Drake Plan}
\usage{
make_with_config_project(plan, .garbage_collection = FALSE, .beep = TRUE,
  .beep_on_error = TRUE)
}
\arguments{
\item{plan}{drake plan}

\item{.garbage_collection}{logical (default = FALSE), whether to run \code{gc()} on the plan}

\item{.beep}{logical (default = TRUE), whether to play the "ping" sound after the plan is made}

\item{.beep_on_error}{logical (default = TRUE), whether to play the "facebook" sound if the plan returns an error}
}
\value{
The master internal configuration list, mostly containing arguments to make() and important objects constructed along the way. See drake_config() for more details.
}
\description{
Make a \code{drake} plan using the project's speficic configuration setup.
}
\note{
See the \code{drake} manual for details: \url{https://ropenscilabs.github.io/drake-manual/hpc.html#on-your-local-machine-1}.
}
