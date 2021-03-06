% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/separate_drgs.R
\name{separate_drgs}
\alias{separate_drgs}
\title{Convert MSDRGs into a "base DRG" and complication level}
\usage{
separate_drgs(drgs, remove_age = FALSE)
}
\arguments{
\item{drgs}{character vector of MSDRG descriptions, e.g. MSDRGDSC}

\item{remove_age}{logical; if TRUE will remove age descriptions}
}
\value{
a tibble with three columns: msdrg: the input vector, base_msdrg, and
  msdrg_complication
}
\description{
Convert MSDRGs into a "base DRG" and complication level
}
\details{
This function is not robust to different codings of complication in
  DRG descriptions. If you have a coding other than "W CC" / "W MCC" / "W
  CC/MCC" / "W/O CC" / "W/O MCC", please file an issue on Github and we'll
  try to add support for your coding.
}
\examples{
MSDRGs <- c("ACUTE LEUKEMIA W/O MAJOR O.R. PROCEDURE W CC",
            "ACUTE LEUKEMIA W/O MAJOR O.R. PROCEDURE W MCC",
            "ACUTE LEUKEMIA W/O MAJOR O.R. PROCEDURE W/O CC/MCC",
            "SIMPLE PNEUMONIA & PLEURISY",
            "SIMPLE PNEUMONIA & PLEURISY AGE 0-17")
separate_drgs(MSDRGs, remove_age = TRUE)
}
