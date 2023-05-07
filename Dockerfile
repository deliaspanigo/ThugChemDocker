# FROM rocker/shiny:4.1.0
FROM rocker/shiny:4.1.0
RUN rm -rf /srv/shiny-server/*
WORKDIR /srv/shiny-server/
COPY ./app.R ./app.R

EXPOSE 3838


# basic shiny functionality
RUN R -q -e "install.packages(c('devtools'))"
RUN R -q -e "devtools::install_github('deliaspanigo/ThugChemR')"