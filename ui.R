library(shiny)

shinyUI(fluidPage(
  titlePanel("mRCC Living Meta-Analysis Dashboard"),
  sidebarLayout(
    sidebarPanel(
      selectInput("outcome", "Select Outcome:",
                  choices = c("OS", "PFS", "ORR", "irAEs", "HRQoL"))
    ),
    mainPanel(
      plotOutput("metaPlot"),
      dataTableOutput("summaryTable")
    )
  )
))