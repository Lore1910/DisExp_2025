# Laura Lorena Camacho Rangel 
# 2070458
# 31/03/2025

# La funcion read.csv sirve para importar datos
trees <- read.csv("Base de datos.csv", header = T)

# La funcion as.factor funciona para convertir caracteres a factores
trees$Species <- as.factor(trees$Species)
trees$Crown <- as.factor(trees$Crown)

# Gráfica
boxplot(trees$Diameter ~ trees$Species,
        xlab ="Especies",   # Etiqueta del eje x
        ylab = "Dbh (cm)",  # Etiqueta del eje y
        col = "pink",       # Color de las celdas
        main = "Inventario",  # Titulo de la grafica
        ylim = c(5,25))      # Ampliar limites del eje y

# Gráfica de altura 

boxplot(trees$Total..m. ~ trees$Species,
        xlab = "Especies",
        ylab = "Altura",
        col = "green",
        main = "Inventario",
        ylin = c(5,25))

#Histograma de altura 

hist(trees$Total..m.,
     xlab = "Altura (m)",
     ylab = "Frecuencia",
     main = "Caracteristicas de altura",
     col = "lightblue")


#Hola y tallo

stem (trees$Total..m.)

