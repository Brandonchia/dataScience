library(shiny)
upperpre <- function(input) ifelse(input$sex == 1,(input$h - 80) * 0.7 * 1.1,(input$h - 70) * 0.6 * 1.1)
lowerpre <- function(input) ifelse(input$sex == 1,(input$h - 80) * 0.7 * 0.9,(input$h - 70) * 0.6 * 0.9)
good <- 'Congraduations, you have perfect weight!'
bad <- 'Please pay more attention to your regular diet and body workout, you will be better!'
result <- function(input) ifelse(input$w < upperpre(input) & input$w > lowerpre(input), good , bad)


shinyServer(
        function(input,output){
                output$oh <- renderPrint({input$h})
                output$ow <- renderPrint({input$w})
                output$odate <- renderPrint({input$date})
                output$prediction1 <- renderPrint({upperpre(input)})
                output$prediction2 <- renderPrint({lowerpre(input)})
                output$oresult <- renderPrint({result(input)})
                }
        )