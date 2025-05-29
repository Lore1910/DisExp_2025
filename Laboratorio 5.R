# Laura Lorena Camacho Rangel
# 2070458
# 09/04/2025

# Pueba de t dependiente

datos <-read.csv("semillas.csv", header = T)
datos$Tiempo <- as.factor(datos$Tiempo)

boxplot(datos$Kgsem ~ datos$Tiempo,
        xlab = "Periodo de colecta",
        ylab = "Peso semillas (kg)",
        col = "pink")

tapply(datos$Kgsem, datos$Tiempo, mean)
t.test(datos$Kgsem - datos$Tiempo, paired = T)

datos <- datos[order(datos$Tiempo), ]

# Separación de los valores
t2012 <- datos$Kgsem[datos$Tiempo == "T2012"]
t2013 <- datos$Kgsem[datos$Tiempo == "T2013"]

# Verificación del mismo largo
length(t2012)  # debe ser 50
length(t2013)  # debe ser 50

# Prueba t pareada
t.test(t2012, t2013, paired = TRUE)
