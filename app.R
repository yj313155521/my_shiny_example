library(shiny)
source("helper.R")
ui <- fluidPage(
  titlePanel("search"),

  sidebarLayout(

    sidebarPanel(
      helpText("The shiny application is used to find other information about a region, such as ID and type"),
      textInput("name",
                h3("type the name of the region"),
                value = "Lund")
    ),
    mainPanel(textOutput("info"))
  )

)


server <- function(input,output){
  output$info <- renderText({
    kolada_api(input$name)
  })
}


shinyApp(ui <- ui,server <- server)


