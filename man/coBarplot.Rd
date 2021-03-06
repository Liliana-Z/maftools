% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/coBarplot.R
\name{coBarplot}
\alias{coBarplot}
\title{Draw two barplots side by side for cohort comparision.}
\usage{
coBarplot(
  m1,
  m2,
  genes = NULL,
  orderBy = NULL,
  m1Name = NULL,
  m2Name = NULL,
  colors = NULL,
  normalize = TRUE,
  yLims = NULL,
  borderCol = "gray",
  titleSize = 1,
  geneSize = 0.8,
  showPct = TRUE,
  pctSize = 0.7,
  axisSize = 0.8,
  legendTxtSize = 1
)
}
\arguments{
\item{m1}{first \code{\link{MAF}} object}

\item{m2}{second \code{\link{MAF}} object}

\item{genes}{genes to be drawn. Default takes top 5 mutated genes.}

\item{orderBy}{Order genes by mutation rate in `m1` or `m2`. Default `NULL`, keeps the same order of `genes`}

\item{m1Name}{optional name for first cohort}

\item{m2Name}{optional name for second cohort}

\item{colors}{named vector of colors for each Variant_Classification.}

\item{normalize}{Default TRUE.}

\item{yLims}{Default NULL. Auto estimates. Maximum values for `m1` and `m2` respectively}

\item{borderCol}{Default gray}

\item{titleSize}{Default 1}

\item{geneSize}{Default 0.8}

\item{showPct}{Default TRUE}

\item{pctSize}{Default 0.7}

\item{axisSize}{Default 0.8}

\item{legendTxtSize}{Default 0.8}
}
\value{
Returns nothing. Just draws plot.
}
\description{
Draw two barplots side by side for cohort comparision.
}
\details{
Draws two barplots side by side to display difference between two cohorts.
}
\examples{
#' ##Primary and Relapse APL
primary.apl <- system.file("extdata", "APL_primary.maf.gz", package = "maftools")
relapse.apl <- system.file("extdata", "APL_relapse.maf.gz", package = "maftools")
##Read mafs
primary.apl <- read.maf(maf = primary.apl)
relapse.apl <- read.maf(maf = relapse.apl)
##Plot
coBarplot(m1 = primary.apl, m2 = relapse.apl, m1Name = 'Primary APL', m2Name = 'Relapse APL')
dev.off()
}
