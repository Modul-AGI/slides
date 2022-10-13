library(tidyverse)

read_csv("stackoverflowtags.csv") |> 
  ggplot(aes(n_questions, tag)) +
  geom_col(fill = "gold2") +
  scale_x_continuous(labels = scales::number_format(big.mark = "'")) +
  theme(axis.text.y = element_text(colour = "white"), 
        axis.text.x = element_text(colour = "white"),
        axis.title = element_blank(),
        panel.border = element_blank(),
        axis.ticks = element_blank(), 
        plot.margin=unit(c(.5,3, .5,.5), 'cm'),
        text = element_text(colour = "white"),
        panel.background = element_rect(fill='transparent'), #transparent panel bg
        plot.background = element_rect(fill='transparent', color=NA), #transparent plot bg
        panel.grid.major = element_blank(), #remove major gridlines
        panel.grid.minor = element_blank(), #remove minor gridlines
        legend.background = element_rect(fill='transparent'), #transparent legend bg
        legend.box.background = element_rect(fill='transparent') #transparent legend panel
  ) 


ggsave("img/so_tags.png",width = 20, height = 10, units = "cm",bg='transparent')

