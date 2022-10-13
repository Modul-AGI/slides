

library(tidyverse)


kaggle_meta <- read_csv("kaggle/kaggle_survey_2021_responses.csv",n_max = 1) |> 
  pivot_longer(cols = everything())

kaggle <- read_csv("kaggle/kaggle_survey_2021_responses.csv") |> 
  slice(-1) |> 
  rename("duration"  = 1)


kaggle |> 
  select(1:7, starts_with("Q7")) |> 
  mutate(tot = n()) |> 
  pivot_longer(starts_with("Q7")) |> 
  group_by(value, tot) |> 
  summarise(
    n = n()
  ) |> 
  filter(!is.na(value)) |> 
  ungroup() |> 
  mutate(
    perc = n/tot,
    value = fct_reorder(value, perc)
  ) |> 
  ggplot(aes(perc, value)) +
  geom_col(fill = "gold3")+
  scale_x_continuous(labels = scales::percent_format()) +
  theme_light() +
  theme(axis.text.y = element_text(colour = "white"), 
        axis.text.x = element_text(colour = "white"),
        axis.title = element_blank(),
        axis.ticks.y = element_blank(), panel.border = element_blank(),
        plot.margin=unit(c(.5,3, .5,.5), 'cm'),
        text = element_text(colour = "white"),
        panel.background = element_rect(fill='transparent'), #transparent panel bg
        plot.background = element_rect(fill='transparent', color=NA), #transparent plot bg
        panel.grid.major = element_blank(), #remove major gridlines
        panel.grid.minor = element_blank(), #remove minor gridlines
        legend.background = element_rect(fill='transparent'), #transparent legend bg
        legend.box.background = element_rect(fill='transparent') #transparent legend panel
  ) 

ggsave("img/kaggle.png",width = 30, height = 20, units = "cm",bg='transparent')

  
