library(UsingR)
data(brightness)

shinyServer(
      function(input,output){
            output$newHist <- renderPlot({
                  hist(x = brightness, xlab='Star brightness', breaks = 12, freq = TRUE, xlim = c(2,14), ylim = c(0, 500), 
                       col='lightyellow', main='Histogram')
#                   matplot(y = brightness, ylab = 'Star brightness', xlab='Star brightness')
                  mu <- input$mu
                  lines(c(mu,mu), c(0,400), col="blue", lwd=5)
                  mse <- ((mean(brightness) - mu)^2)
                  text(3, 300, paste("mu =", mu))
                  text(3, 260, paste("MSE =", round(mse, 2)))
                  })
            
      }
)