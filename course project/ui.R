library(markdown)

shinyUI(
  pageWithSidebar(
    # Application Title
    headerPanel("Extramarital Affairs Prediction"),
  
    sidebarPanel(
      numericInput('inputage', 'Age in Years', 25, min = 0, max = 120, step = 1),
      numericInput('inputyearsmarried', 'Number of Years Married', 10, min = 0, max = 75, step = 1),
      numericInput('inputreligiousness', 'Importance of Religion', 1, min = 1, max = 5, step = 1),
      numericInput('inputrating','Rating of Happiness in Marriage', 1, min = 1, max = 5, step = 1),
      submitButton('Submit')
    ),
    mainPanel(
      p('Predicted number of Affairs'),
      verbatimTextOutput("prediction"),
      p('', includeMarkdown("include.md"))
    )
  )
)
