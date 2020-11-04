library(shiny)

shinyUI(fluidPage(
    titlePanel("Predicting the height of the child"),
    sidebarLayout(
        sidebarPanel(
            helpText("Predicting the child's height considering gender of the child and the parent's height"),
            helpText("Parameters:"),
            sliderInput(inputId = "inFh",
                        label = "Father's height (cm):",
                        value = 150,
                        min = 140,
                        max = 250,
                        step = 1),
            sliderInput(inputId = "inMh",
                        label = "Mother's height (cm):",
                        value = 140,
                        min = 140,
                        max = 250,
                        step = 1),
            radioButtons(inputId = "inGen",
                         label = "Child's gender: ",
                         choices = c("Female"="female", "Male"="male"),
                         inline = TRUE)
        ),
        
        mainPanel(
            htmlOutput("pText"),
            htmlOutput("pred"),
            plotOutput("Plot", width = "50%")
        )
    )
))
