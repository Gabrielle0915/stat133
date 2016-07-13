shinyUI(fluidPage(
  
  titlePanel("Occupancy Rates in Berkeley"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Upload an XML file with the Census Data to get started"),
      
      fileInput(inputId = "File", label = "File input"),
      
      selectInput(inputId = "Neighborhood", label = "Choose the neighborhood to inspect", choices = c("North Berkeley", "Rockridge", "Downtown Berkeley", "Berkeley Hills")),
      
      sliderInput(inputId = "Number", label = "Number of People in Household:", min = 0, max = 40, value = c(0,40)),
      
      width = 4
    ),
    
    mainPanel()
    
    
    
    
    
    
    
    
  )
  
  
))