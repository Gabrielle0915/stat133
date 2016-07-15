shinyServer(function(input, output) {
  
  output$picture <- renderPlot(
    expr = diamonds %>%
      filter(cut %in% input$cut) %>%
      filter(color %in% input$color) %>%
      ggplot(aes_string(x = input$characteristics, y = "price")) + geom_point()
  )
  
})