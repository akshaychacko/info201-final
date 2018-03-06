# Server code needed to draw histogram and change display based on radio selection
server <- function(input, output) {
  

  # Histogram generation is wrapped in a call to renderPlot, because it is reactive and should be executed each time the input changes.
  data <- read.csv("data/pollution_us_2000_2016.csv", stringsAsFactors=FALSE)
  
  output$histPlot <- renderPlot({
    
    # Switches histogram label and column to display based on radio button selected 
    if(input$select=='a'){
      i<-11
      string <- "NO2"
    }
    
    if(input$select=='b'){
      i<-16
      string <- "O3"
    }
    
    if(input$select=='c'){
      i<-21
      string <- "SO2"
    }
    
    if(input$select=='d'){
      i<-26
      string <- "CO"
    }
    
    # Sets x value to column selected by user
    x <- data[, i]
    
    # adjusts size of bins according to user selection on slider
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # displays histogram of the desired bin size for the selected column
    hist(x, breaks = bins, col = "#FF5733", border = "black",
         xlab = paste0("Amount of ", string),
         main = paste0("Histogram of Pollutant Frequency ", string))
  })
  
}
