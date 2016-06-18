library(AER)
library(shiny)
library(markdown)

data(Affairs)
lmaffairs <- lm(affairs ~  age + yearsmarried + religiousness + rating, data = Affairs)
lmaffairs
numberofAffairs <- function(inputage, inputyearsmarried, inputreligiousness, inputrating) {
     
     predictedvalues <- predict(lmaffairs, newdata=data.frame(age = inputage, yearsmarried = inputyearsmarried
                          , religiousness = inputreligiousness, rating = inputrating))
return(predictedvalues)
     
  }

shinyServer(
  function(input, output) {
     output$prediction <- renderPrint({numberofAffairs(input$inputage,input$inputyearsmarried, input$inputreligiousness, input$inputrating)})
     }
)
