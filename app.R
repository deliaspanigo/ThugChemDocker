library(shiny)
library(devtools)
library(ThugChemR)

# Va la funcion sin argumentos
ui <- ThugChemR::ui_ThugChemPage()

# Va la funcion sin parentesis!
# Le esta pasando la funcion completa!
server <- ThugChemR::server_ThugChemPage

shiny::shinyApp(ui = ui, server = server)
