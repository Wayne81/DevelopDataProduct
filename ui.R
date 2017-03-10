
library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Orange Tree Growth Prediction Model"),
  
  sidebarLayout(
    sidebarPanel(
       sliderInput("NoDays", "Growthing Days:", 
                   min=100, max=1600, value=500),
       radioButtons("plotType", "Plot Type of Sample", 
                    c("Scatter"="p", "Line"="l")),
       radioButtons("plotColor", "Plot Colour", 
                    c("Red"="red", "Blue"="blue", 
                      "Green"="green", "Pink"="pink"))      
    ),
    
    mainPanel(
      h3("Predicted Circumference of Orange Tree(CM)"),
      textOutput("pfit"),
      plotOutput("lmPlot")
    )
  )
))
