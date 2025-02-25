set.seed(100)

library(ggplot2)
library(tidyverse)

# log perceived bitterness scores from Lim et al. 2014

data2 <- data.frame(Index = c(1:500),
                    Intensity = abs(rnorm(n = 500, mean = 12.589, sd = 26.989)),
                    Group = c(rep("A", 500)))


ggplot(data2 ,aes(x = Group, y = Intensity)) +
  geom_violin() +
  stat_summary(fun = "mean", geom = "point")

ggplot(data2 ,aes(x = Group, y = Intensity)) +
  geom_boxplot() +
  stat_summary(fun = "mean", geom = "point")

Rmisc::summarySE(data = data2, measurevar = "Intensity")

DensityIntensity <- ggplot(data2, aes(x = Intensity)) +
  geom_histogram(aes(y = ..density..),
                 breaks = seq(0, 100, by = 10), 
                 colour = "black", 
                 fill = "white") +
  stat_function(fun = dnorm, args = list(mean = mean(data2$Intensity), sd = sd(data2$Intensity)), linewidth = 1) +
  annotate("text", label = "Raw Data", x = 75, y = 0.023)

# test normality of data
shapiro.test(data2$Intensity) # not normal, p < 0.001

QQIntensity <- ggplot(data2, aes(sample = Intensity)) +
  stat_qq() +
  stat_qq_line() +
  annotate("text", label = "p < 0.001", x = -2, y = 75)


data2$SRI <- sqrt(data2$Intensity)

shapiro.test(data2$SRI) #not normal, p - 0.02

DensitySRI <- ggplot(data2, aes(x = SRI)) +
  geom_histogram(aes(y = ..density..),
                 breaks = seq(0, 10, by = 1), 
                 colour = "black", 
                 fill = "white") +
  stat_function(fun = dnorm, args = list(mean = mean(data2$SRI), sd = sd(data2$SRI)), linewidth = 1) +
  annotate("text", label = "SQRT Transformed", x = 8.5, y = 0.20)


QQSRI <- ggplot(data2, aes(sample = SRI)) +
  stat_qq() +
  stat_qq_line() +
  annotate("text", label = "p = 0.024", x = -2, y = 8)


cowplot::plot_grid(DensityIntensity,DensitySRI, QQIntensity,  QQSRI, ncol = 2)


