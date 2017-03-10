library(shiny)

shinyServer(function(input, output) {
  predValue <- reactive({
    pred <- lm(circumference~age, Orange)
    predict(pred, data.frame(age=c(input$NoDays)), interval="prediction")
  })

  output$lmPlot <- renderPlot({
    plot(x=Orange$age, y=Orange$circumference, type=input$plotType, 
         col=input$plotColor, main="Orange Tree's Circumference against Growthing Days",
         xlab="Circumference", ylab="Days Growthing")
  })

  output$pfit <- renderText({
    predValue()[1]
  })
  
})
