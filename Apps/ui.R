library(shiny)

#Create the credit and grade of each class, respectively
credits <- c(0:7)
grades <- c('A','A-','B+','B', 'B-', 'C+', 'C', 'C-', 'D+', 'D', 'F')

shinyUI(fluidPage(
    headerPanel("GPA Calculator"),
    sidebarPanel(
        h4('Class 1'), 
        numericInput('qt_credit1', 'Credits', 1, min = 0, max = 7),
        selectInput('grade1', 'Grade',choices = grades),
        h4('Class 2'),
        numericInput('qt_credit2', 'Credits', 1, min = 0, max = 7),
        selectInput('grade2', 'Grade',choices = grades),
        h4('Class 3'),
        numericInput('qt_credit3', 'Credits', 1, min = 0, max = 7),
        selectInput('grade3', 'Grade',choices = grades),
        submitButton('Submit')
    ),
    mainPanel(
        h4('GPA result:'),
        verbatimTextOutput("gpaResult")
    )
  )
)