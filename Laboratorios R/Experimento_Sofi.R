ceec <- read.csv("Lentejas.csv", header = T)
ceec$Sustrato <- as.factor(ceec$Sustrato)
boxplot(ceec$Crecimiento~ceec$Sustrato,
        xlab = "sustrato",
        ylab = "crecimiento")
tapply(ceec$Crecimiento, ceec$Sustrato, mean)
tapply(ceec$Crecimiento, ceec$Sustrato, var)
shapiro.test(ceec$Crecimiento)
bartlett.test(ceec$Crecimiento~ceec$Sustrato)
ceec.aov <- aov(ceec$Crecimiento~ceec$Sustrato)
summary(ceec.aov)
TukeyHSD(ceec.aov)
plot(TukeyHSD(ceec.aov))
tapply(ceec$Crecimiento, ceec$Sustrato, length)
