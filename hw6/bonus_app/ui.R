library(shiny)
shinyUI(fluidPage(
  
  titlePanel("Life Expectancy and Income"),
  
  sidebarLayout(
    sidebarPanel(
      
      sliderInput(inputId = "yearSelected", label = "Year:", min = 1800, max = 2015, value = 1800)
      
      
    ),
    
    mainPanel(
      ggvisOutput("picture")
    )
    
    
    
    
    
    
    
    
  )
  
  
))