shinyUI(fluidPage(
  
  titlePanel("Occupancy Rates in Berkeley"),
  
  sidebarLayout(
    sidebarPanel(
      
      helpText("Please select the diamond you want to understand."),
      
      selectInput(inputId = "characteristics", label = "Characteristics", choices = c("depth", "table", "carat")),
      
      checkboxGroupInput(inputId = "cut", label = "Cut", choices = as.character(sort(unique(diamonds$cut)))),
      
      checkboxGroupInput(inputId = "color", label = "Color", choices = as.character(sort(unique(diamonds$color))))

    ),
    
    mainPanel(
      plotOutput("picture")
    )
    
    
    
    
    
    
    
    
  )
  
  
))