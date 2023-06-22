# # # # #  Sistema Operativo, R y RStudio...
# Version de R: 4.3.0
FROM rocker/rstudio:4.3.0

# # # # #  Shiny-Server
# Instala la version de Shiny-Server correspondiente a la version 4.3.0 de R
RUN /rocker_scripts/install_shiny_server.sh

# Automaticamente pasa lo siguiente:
# Por el puerto 3838 te conectas a la app Shiny
####################################################################################################################


RUN R -q -e "install.packages(c('devtools'))"
RUN R -q -e "devtools::install_github('deliaspanigo/ThugChemR')"



######################################################################################################################

EXPOSE 3838

##  Descarga del contenido de RMedic
RUN rm -rf /srv/shiny-server/*             
WORKDIR /srv/shiny-server/                 
COPY ./app.R ./app.R

######################################################################################################################




