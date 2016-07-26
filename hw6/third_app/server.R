library(ggplot2)
library(dplyr)
shinyServer(function(input, output) {
  
  output$picture <- renderPlot(
    expr = finalData %>%
      filter(year == input$yearSelected) %>%
      ggplot(aes(x = gdp, y = life, size = population, fill = Region)) + geom_point(shape = 21, alpha = 0.75) + xlab("GDP Per Capita(Inflation Adjusted)") + ylab("Life Expectency at Birth") + ggtitle(input$yearSelected) + scale_x_log10(limits = c(500, 182668), breaks = c(500, 5000, 50000)) + scale_y_continuous(limits = c(25, 85), breaks = c(25, 50, 75)) + scale_size_area(max_size = 10)
  )
  
})