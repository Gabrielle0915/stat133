library(ggplot2)
library(shiny)
library(ggvis)
library(dplyr)
shinyServer(function(input, output, session) {
  
  
  
  reactive(finalData) %>%
    filter(year == input$yearSelected) %>%
    ggvis(x = ~gdp, y = ~life, size = ~population, fill = ~Region) %>%
    layer_points(shape := 21) %>%
    add_tooltip(function(df){df$country}, "hover") %>%
    add_axis("x", title = "GDP Per Capita(Inflation Adjusted)") %>%
    add_axis("y", title = "Life Expectency at Birth") %>%
    add_legend("fill", title = "Region") %>%
    scale_numeric("x", domain = c(500, 182668), nice = FALSE) %>%
    scale_numeric("y", domain = c(25, 85)) %>%
    bind_shiny("picture")
  
  
  
  
  
  
  
})