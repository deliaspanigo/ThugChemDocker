# # # # #  Sistema Operativo, R y RStudio...
# Version de R: 4.3.0
FROM rocker/rstudio:4.3.0

# # # # #  Shiny-Server
# Instala la version de Shiny-Server correspondiente a la version 4.3.0 de R
RUN /rocker_scripts/install_shiny_server.sh

# Automaticamente pasa lo siguiente:
# Por el puerto 3838 te conectas a la app Shiny
####################################################################################################################


# # # # # Instalacion de Librerias
ENV RENV_VERSION 0.17.3
RUN R -e "install.packages('remotes', repos = c(CRAN = 'https://cloud.r-project.org'))"
RUN R -e "remotes::install_github('rstudio/renv@${RENV_VERSION}')"

WORKDIR /project
COPY renv.lock renv.lock
RUN R -e "renv::restore()"

RUN R -q -e "install.packages(c('devtools'))"
RUN R -q -e "devtools::install_github('deliaspanigo/ThugChemR')"

######################################################################################################################

EXPOSE 3838

##  Descarga del contenido de RMedic
RUN rm -rf /srv/shiny-server/*             
WORKDIR /srv/shiny-server/                 
COPY ./app.R ./app.R

######################################################################################################################




