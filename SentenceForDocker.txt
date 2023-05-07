

# Pagina 
https://www.r-bloggers.com/2022/09/using-shiny-server-in-docker/


# Crea una imagen
# docker build -t tc_new .

# Crea una imagen desde cero cada veaz
docker build --no-cache -t tc_new .

# Inicio comun
# docker run --rm -p 3838:3838 tc_new

# Inicio en Detach
#docker run -d --rm -p 3838:3838 --name tc_new tc_new


# Inicio en Detach, y arranca de nuevo despues del reseteo
docker run -d -p 3838:3838 --restart unless-stopped --name tc_new tc_new