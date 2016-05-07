library(shiny)
shinyUI(pageWithSidebar(
      
      headerPanel("966 stars"),
      
      sidebarPanel(
            sliderInput('mu','Guess the mean brightness', value = 7.00, min = 2.00, max = 14.00, step = 0.05)
            ),
      mainPanel(
            plotOutput('newHist')      
      )
))