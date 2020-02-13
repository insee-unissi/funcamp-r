message('library paths:\n', paste('... ', .libPaths(), sep='', collapse='\n'))

Sys.setenv(RSTUDIO_PANDOC=paste(getwd(),"ressources/RStudio/bin/pandoc/",sep='',collapse='\n'))

variable <- commandArgs(trailingOnly=TRUE)
theNumber <- as.numeric(variable[1])

rmarkdown::run(paste0('grimoire_IGoR/chapitre',theNumber,'/chapitre',theNumber,'.Rmd',sep=''), shiny_args = list(launch.browser = T))

