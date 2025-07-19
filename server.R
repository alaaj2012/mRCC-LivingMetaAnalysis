library(shiny)

shinyServer(function(input, output) {
  output$metaPlot <- renderPlot({
    plot(1:10, main = paste("Plot for", input$outcome))
  })

  output$summaryTable <- renderDataTable({
    data.frame(Outcome = input$outcome, Value = rnorm(5))
  })
})