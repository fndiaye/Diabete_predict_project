#download.packages("https://http://cran.rstudio.com/bin/windows/contrib/3.1/shiny_0.13.2.zip")
#install.packages("shiny")
library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Predicting Diabetes Progression"),
  sidebarPanel(h3('Menu'),
               h3('Presentation'),
               h3('Diabete risks prediction')
              ),
  mainPanel(
   
    numericInput('AGE', 'Age (nb of years)', 30, min = 19, max = 79, step = 1),
    numericInput('SEX', 'Sex (1 for male, 2 for female)', 1, min = 1, max = 2, step = 1),
    numericInput('BMI', 'BMI', 30, min = 18, max = 42, step = 1),
    numericInput('BP', 'BP', 80, min = 62, max = 133, step = 1),
    numericInput('S1', 'TC', 110, min = 97, max = 301, step = 10),
    numericInput('S2', 'LDL', 110, min = 41, max = 242, step = 10),
    numericInput('S3', 'HDL', 50, min = 22, max = 99, step = 5),
    numericInput('S4', 'TCH', 5, min = 2, max = 9, step = 1),
    numericInput('S5', 'LTG', 4, min = 3, max = 6, step = 1),
    numericInput('S6', 'Glucose', 92, min = 50, max = 124, step = 2),
    
    submitButton('Submit'),
    
    h4('For the values entered above: '),
    h4('the prevision of the desease progression for next year is:'),
    h3(verbatimTextOutput("result"))
    
  )
)
)
