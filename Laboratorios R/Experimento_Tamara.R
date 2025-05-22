# Laura Lorena Camacho Rangel 
# 2070458
# 21/05/2025
#Experimento de Tamara

Internet <- read.csv("Internet.csv", header = T)
Internet$Tiempo <- as.factor(Internet$Tiempo)

boxplot(Internet$Velocidad ~ Internet$Tiempo)
tapply(Internet$Velocidad, Internet$Tiempo, mean)
tapply(Internet$Velocidad, Internet$Tiempo, var)

shapiro.test(Internet$Velocidad)
bartlett.test(Internet$Velocidad ~ Internet$Tiempo)
Internet$vel.sqrt <- sqrt(Internet$Velocidad)
shapiro.test(Internet$vel.sqrt)

in.aov <- aov(Internet$vel.sqrt ~ Internet$Tiempo)
summary(in.aov)

