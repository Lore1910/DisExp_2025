# Laura Lorena Camacho Rangel 
# 2070458
# 09/04/2025

# Comparación de medianas del ejercicio número 2
# Prueba de T de una muestra
# Ho= La media del peso neto de los costales es de 80kg
# Hi= La media del peso neto de los costales es menor a 80kg

costal <- c(87.7, 80.01, 77.28, 78.76, 81.52, 74.4, 80.71, 79.5, 77.87, 81.94, 80.7,
             82.32, 75.78, 80.19, 83.91, 79.4, 77.52, 77.62, 81.4, 74.89, 82.95,
             73.59, 77.92, 77.18, 79.83, 81.23, 79.28, 78.44, 79.01, 80.47, 76.23,
             78.89, 77.14, 69.94, 78.54, 79.7, 82.45, 77.29, 75.52, 77.21, 75.99,
             81.94, 80.41, 77.77)
mean(costal)
## [1] 78.91682

# Length = amplitud de los datos
length(costal)
## [1] 44

shapiro.test(costal)
##
## Shapiro-Wilk normality test
##
## data:  costal
## W = 0.97851, p-value = 0.5752

boxplot(costal)

# Fivenum = mostrar valores de los cuartiles
fivenum(costal)
## [1] 69.940 77.245 78.950 80.705 87.700

# El siguiente codigo es para La prueba de t de una sola muestra 
# mu = La media de referencia
t.test(costal, mu= 80)
##
## One Sample t-test
##
## data:  costal
## t = -2.357, df = 43, p-value = 0.02305
## alternative hypothesis: true mean is not equal to 80
## 95 percent confidence interval:
##  77.99003 79.84361
## sample estimates:
##  mean of x 
## 78.91682 
