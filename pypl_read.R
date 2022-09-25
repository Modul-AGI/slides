
library(tidyverse)
library(glue)
pypl <- read_lines("pypl/All.js")

colnames <- str_split_fixed(pypl[8],", ",28)[1,] |> 
  str_remove_all("'")



df <- head(pypl[12:230], Inf)

dat <- str_replace(df, "new Date\\((\\d{4}),(\\d{1,2}),(\\d{1,2})\\)", "\\1-\\2-\\3") |> 
  str_remove_all("\\[|\\]|,$") |> 
  str_split_fixed(",",29) |> 
  data.frame()

colnames(dat) <- c("Date",colnames)

dat_long <- dat |> 
  mutate(Date = as.Date(Date)) |> 
  pivot_longer(-Date) |> 
  mutate(value = as.numeric(value))

ggplot(dat_long, aes(Date, value, label = name)) +
  geom_line(aes(group = name)) +
  geom_line(data = ~filter(., name %in% c("Python", "R")), aes(colour = name)) +
  geom_text(data = ~top_n(filter(., Date == max(Date, na.rm = TRUE)),4,value),hjust = 0, vjust = .5) +
  expand_limits(x = as.Date("2025-01-01")) +
  theme_light()


max_date <- max(dat_long$Date, na.rm = TRUE)

filter(dat_long, Date == max_date) |> 
  top_n(15, value) |>
  arrange(desc(value)) |> 
  transmute(iname = name, i = row_number()) |> 
  # head(1) |>
  pmap(function(iname, i){
    ggplot(dat_long, aes(Date, value, label = name)) +
      geom_line(aes(group = name), colour = "white", alpha = 0.2) +
      geom_line(data = ~filter(., name == iname), colour = "gold", lwd = 1.2, alpha = .5) +
      geom_line(data = ~filter(., name == iname), colour = "gold2", lwd = 2.3, alpha = .2) +
      geom_line(data = ~filter(., name == iname), colour = "gold3", lwd = 3.0, alpha = .1) +
      geom_label(data = ~filter(., Date == max(Date, na.rm = TRUE), name == iname),hjust = 0, 
                 vjust = .5, x = max_date+100, fill = "gold3") +
      scale_y_continuous("Popularity") +
      scale_x_date(limits = range(dat_long$Date,na.rm = TRUE))+
      theme_light() +
      theme(axis.text.y = element_blank(), 
            axis.text.x = element_text(colour = "white"),
            axis.ticks.y = element_blank(), panel.border = element_blank(),
            plot.margin=unit(c(.5,3, .5,.5), 'cm'),
            text = element_text(colour = "white"),
            panel.background = element_rect(fill='transparent'), #transparent panel bg
            plot.background = element_rect(fill='transparent', color=NA), #transparent plot bg
            panel.grid.major = element_blank(), #remove major gridlines
            panel.grid.minor = element_blank(), #remove minor gridlines
            legend.background = element_rect(fill='transparent'), #transparent legend bg
            legend.box.background = element_rect(fill='transparent') #transparent legend panel
      ) +
      coord_cartesian(clip = "off", expand=0) +
      labs(caption = "Data from PYPL PopularitY of Programming Language (pypl.github.io)")
    
    ggsave(file.path("img",glue("pypl_{i}.png")),width = 30, height = 20, units = "cm",bg='transparent')
  })
  
