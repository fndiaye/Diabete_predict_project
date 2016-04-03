library(shiny)
library(randomForest)
library(caret)

fileURL <- "http://www4.stat.ncsu.edu/~boos/var.select/diabetes.tab.txt"
file <- download.file(fileURL, destfile = "./diabetes.txt")
diabeteData <- read.table("./diabetes.txt", header = TRUE)


diabetesRisk <- function (age, sex, bmi, bp, S1, S2, S3, S4, S5, S6) {
  test <- data.frame("AGE" <- age,
                     "SEX" <- sex,
                     "BMI" <- bmi,
                     "BP" <- bp,
                     "S1" <- S1,
                     "S2" <- S2,
                     "S3" <- S3,
                     "S4" <- S4,
                     "S5" <- S5,
                     "S6" <- S6)
  
  colnames(test) <- c("AGE","SEX","BMI","BP","S1","S2","S3","S4","S5","S6")
  
  ## Data partition
  training <- diabeteData
  inTrain = createDataPartition(training$Y, p = 0.7, list=FALSE)
  trainset = training[ inTrain,]
  testset = training[-inTrain,]
  

  ## RF model
  modelrf <- train(Y ~ ., data = trainset, method = "rf", trControl = trainControl(method="cv", number=3))
  finmod <- modelrf$finalModel
  
  
  ## Model application on the entered values
  res <- predict(modelrf, test)

  res
  
}

shinyServer(
  function(input, output) {
    output$age <- renderPrint({input$AGE})
    output$sex <- renderPrint({input$SEX})
    output$bmi <- renderPrint({input$BMI})
    output$bp <- renderPrint({input$BP})
    output$S1 <- renderPrint({input$S1})
    output$S2 <- renderPrint({input$S2})
    output$S3 <- renderPrint({input$S3})
    output$S4 <- renderPrint({input$S4})
    output$S5 <- renderPrint({input$S5})
    output$S6 <- renderPrint({input$S6})
    output$result <- renderPrint({diabetesRisk(input$AGE,
                                               input$SEX,
                                               input$BMI,
                                               input$BP,
                                               input$S1,
                                               input$S2,
                                               input$S3,
                                               input$S4,
                                               input$S5,
                                               input$S6)})
#     output$acc <- renderPrint({diabetesRisk(input$age,
#                                                input$sex,
#                                                input$bmi,
#                                                input$bp,
#                                                input$S1,
#                                                input$S2,
#                                                input$S3,
#                                                input$S4,
#                                                input$S5,
#                                                input$S6)$acc})
  }
)
