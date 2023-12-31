% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/IVFPred.R
\name{VizIVFValid}
\alias{VizIVFValid}
\title{Visualize IVF-ET validation results}
\usage{
VizIVFValid(PID, OutPath = "default", Brightness = NULL, Palette = NULL)
}
\arguments{
\item{PID}{chr. Program ID. It must be the same with the PID generated by initial functions.}

\item{OutPath}{chr. Output file directory, e.g. "D:/test". It should be noted that
the slash symbol is "/", not "\". If "default", the current working directory will be set.}

\item{Brightness}{chr. Visualization brightness. Available options include "light" and "dark".}

\item{Palette}{chr. Visualization palette. Available options include options about some journal preference styles
including "cell", "nature", "science", "lancet", "nejm", etc.}
}
\value{
An R6 class object containing the model results
}
\description{
VizIVFValid function is mainly aimed to visualize the modeling results calculated by IVFValid function.
It can provide plots with high quality of the final results to make it easier for users to understand.
}
\examples{
    res <- InitIVF()
   res1 = LoadIVF(PID = res$PID, UseExample = "example#2")
   res2 = TransImputIVF(PID=res$PID, Vars="all.x")
   res2 = DelLowVarIVF(PID=res$PID)
   res2 = DelMissIVF(PID=res$PID)
   res2 = TransTypeIVF(PID = res$PID, Vars = "Y,X85,X86,X87,X88,X89,X90,X91,X92,X93,X94,X95,X96,X97,X98",
                       To = "factor")
   res2 = TransClassIVF(PID = res$PID, Vars = "X47", LevelTo = 4)
   res2 = TransScaleIVF(PID = res$PID, Vars = "X55", Method = "normal")
   res2 = TransDistrIVF(PID = res$PID, Vars = "X61", Method = "log10")
   res3 = IVFPred(PID = res$PID, AutTuneM = "random_search", AutTuneN = 5,
                  RsmpMethod = "cv", Folds = 5,
                  Learners = "logistic,rf,xgboost")
   res4 = IVFValid(PID = res$PID, SingleGroup = TRUE)
   res4 = VizIVFValid(PID = res$PID, Brightness = "dark", Palette = "lancet")
   FuncExit(PID = res$PID)
}
\author{
Weinan Lin, Bin Wang (corresponding author)
}
