% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ListScripts.R
\name{ListScripts}
\alias{ListScripts}
\title{List Available Scripts}
\usage{
ListScripts(path = NULL, SelectSCRIPT = NULL)
}
\arguments{
\item{path}{string, path to the /Scripts/ folder.}

\item{SelectSCRIPT}{integer, Script ID value determined from
MobileTrigger::ListScripts() output when SelectSCRIPT = NULL}
}
\value{
If SelectSCRIPT = NULL: An HTML table of all scripts in the /Scripts/
folder. If SelectSCRIPT is a Script ID number from the complete script list it
only returns and HTML table with the selected script
}
\description{
Creates an HTML table for all or selected scripts in the
[TRIGGER_PATH]/Scripts/ folder. This table is used as part of a message
being sent out to a receiving e-mail client.
}
\examples{
\donttest{
#################################
# Get all the Available Scripts #
#################################
  SCRIPTPATH <- "C:/Triggers/Scripts/"
  HTML.Message <- ListScripts(path = SCRIPTPATH)
  ## Use the HTML.Message to send table of Scripts with MailR package.

#############################
# Get Selected  Script      #
#############################
  HTML.Message <- ListScripts(path = SCRIPTPATH, SelectSCRIPT = 1)
  ## Use the HTML.Message to send table of Selected Script with MailR package.
}
}
