library(shiny)
shinyServer(function(input, output) {
  output$text <- renderText(input$candy * input$cost)
})