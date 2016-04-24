
#Here I create the Points matrix
gpa_points <- matrix(data = c(4.0, 3.7, 3.3, 3.0, 2.7, 2.3, 2.0, 1.7, 1.3, 1.0, 0), ncol = 11)
colnames(gpa_points) <- c('A','A-','B+','B', 'B-', 'C+', 'C', 'C-', 'D+', 'D', 'F')

shinyServer(
    function(input, output ) {
        output$gpaResult <- renderPrint({
            (input$qt_credit1 * gpa_points[1,input$grade1] +
            input$qt_credit2 * gpa_points[1,input$grade2] +
            input$qt_credit3 * gpa_points[1,input$grade3]) /
           (input$qt_credit1 +
            input$qt_credit2 +
            input$qt_credit3)    
            })
    }
)    