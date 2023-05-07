library(shiny)
library(usethis)
library(devtools)
library(ThugChemR)

# Va la funcion sin argumentos
ui <- ThugChemR::ui_ThugChemPage()

# Va la funcion sin parentesis!
# Le esta pasando la funcion completa!
server <- ThugChemR::server_ThugChemPage

# Armamos la app...
shiny::shinyApp(ui = ui, server = server)
# the_app <- shiny::shinyApp(ui = ui, server = server)

# La levantamos con detalles particulares de puerto por ejemplo
# shiny::runApp(the_app, host = '0.0.0.0', port = 3838)

# shiny::shinyApp(ui = ui, server = server)
# shiny::runApp(appDir = my_dir, port = 3838)
# Run the application 
# shiny::shinyApp(ui = ui, server = server)