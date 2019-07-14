rm(list = ls())

# Libraries ---------------------------------------------------------------

library("ggplot2")
library("gganimate")
library("gifski")
library("ggmap")
library("png")
library("ggthemes")


# Dados -------------------------------------------------------------------

g <- data.frame(x = 1:100,
                y = 1:100,
                FR = 1:100)



ggplot(g, aes(x, y))+
  geom_line()+
  geom_segment(aes(xend = x, yend = y), linetype = 2, colour = 'grey')+
  geom_point(size = 2)+
  labs(title = "Gráfico dos Poderes x Responsabilidades",
       y = "Grandes Responsabilidades",
       x = "Grandes Poderes",
       caption = "Econometria \nIndependente")+
  theme_economist()+
  theme(plot.title = element_text(size = 18, face = "bold"),
        axis.title = element_text(size = 18, face = "bold"),
        plot.caption = element_text(size = 13, face = "bold"),
        axis.text = element_text(size = 0))+
  transition_reveal(FR)


# In portuguese --------------------------------------------------------------

ggplot(g, aes(x, y))+
  geom_line()+
  geom_segment(aes(xend = x, yend = y), linetype = 2, colour = 'grey')+
  geom_point(size = 2)+
  labs(title = "Power x Responsibilities Graph",
       y = "Great Responsibilities",
       x = "Great Power",
       caption = "Econometria \nIndependente")+
  theme_economist()+
  theme(plot.title = element_text(size = 18, face = "bold"),
        axis.title = element_text(size = 18, face = "bold"),
        plot.caption = element_text(size = 13, face = "bold"),
        axis.text = element_text(size = 0))+
  transition_reveal(FR)


# Exponencial -------------------------------------------------------------

gx <- data.frame(x = 1:100,
                 y = exp(c(seq(1, by = 0.055, length.out = 100))),
                 FR = 1:100)
gx

ggplot(gx, aes(x, y))+
  geom_line(size = 1.1)+
  geom_segment(aes(xend = x, yend = y), linetype = 2, colour = 'grey')+
  geom_point(size = 2)+
  labs(title = "Gráfico dos Poderes x Responsabilidades",
       y = "Grandes Responsabilidades",
       x = "Grandes Poderes",
       caption = "Econometria \nIndependente")+
  theme_economist()+
  theme(plot.title = element_text(size = 18, face = "bold", hjust = 0.5),
        axis.title = element_text(size = 18, face = "bold"),
        plot.caption = element_text(size = 13, face = "bold"),
        axis.text = element_text(size = 0))+
  transition_reveal(FR)


# Exponencial in english --------------------------------------------------

ggplot(gx, aes(x, y))+
  geom_line(size = 1.1)+
  geom_segment(aes(xend = x, yend = y), linetype = 2, colour = 'grey')+
  geom_point(size = 2)+
  labs(title = "Power x Responsibilities Graph",
       y = "Great Responsibilities",
       x = "Great Power",
       caption = "Econometria \nIndependente")+
  theme_economist()+
  theme(plot.title = element_text(size = 18, face = "bold", hjust = 0.5),
        axis.title = element_text(size = 18, face = "bold"),
        plot.caption = element_text(size = 13, face = "bold"),
        axis.text = element_text(size = 0))+
  transition_reveal(FR)



