% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ListModels.R
\name{ListModels}
\alias{ListModels}
\title{List Available Models}
\usage{
ListModels(path = NULL, SelectMDL = NULL)
}
\arguments{
\item{path}{string, path to the /Models/ folder.}

\item{SelectMDL}{integer, Model ID value determined from MobileTrigger::ListModels() output
when SelectMDL = NULL}
}
\value{
If SelectMDL = NULL: An HTML table of all models in the /Models/
folder. If SelectMDL is a ModelID number from the complete model list it
only returns and HTML table with the selected model
}
\description{
Creates an HTML table for all or selected models in the
[TRIGGER_PATH]/Models/ folder. This table is used as part of a message
being sent out to a receiving e-mail client.
}
\examples{
\donttest{
################################
# Get all the Available Models #
################################
  MODELPATH <- "C:/Triggers/Models/"
  HTML.Message <- ListModels(path = MODELPATH)
  ## Use the HTML.Message to send table of Models with MailR package.

#############################
# Get Selected Model        #
#############################
  HTML.Message <- ListModels(path = MODELPATH, SelectMDL = 1)
  ## Use the HTML.Message to send table of Selected Model with MailR package.
}
}
