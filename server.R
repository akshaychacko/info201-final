# Server code needed to draw histogram and change display based on radio selection
server <- function(input, output) {
  

  # Histogram generation is wrapped in a call to renderPlot, because it is reactive and should be executed each time the input changes.
 # data <- read.csv("data/pollution_us_2000_2016.csv", stringsAsFactors=FALSE)
  
  output$histPlot <- renderPlot({
    
    # Switches histogram label and column to display based on radio button selected 
    if(input$select=='a'){
      i<-8
      string <- "NO2"
    }
    
    if(input$select=='b'){
      i<-10
      string <- "O3"
    }
    
    if(input$select=='c'){
      i<-12
      string <- "SO2"
    }
    
    if(input$select=='d'){
      i<-14
      string <- "CO"
    }
    
    # Sets x value to column selected by user
    x <- bigdata[, i]
    
    # adjusts size of bins according to user selection on slider
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # displays histogram of the desired bin size for the selected column
    hist(x, breaks = bins, col = "#FF5733", border = "black",
         xlab = paste0("Amount of ", string),
         main = paste0("Histogram of Pollutant Frequency ", string))
  })
  
  output$plot <- renderPlotly({
    
    #color <- c("blue", "red")
    
    our_data <- smalldata
    if(input$select=='a'){
      temp <- smalldata$NO2
      label <- "NO2 Concentration in United States"
    }
    
    if(input$select=='b'){
      temp <- smalldata$O3
      label <- "O3 Concentration in United States"
    }
    
    if(input$select=='c'){
      temp <- smalldata$SO2
      label <- "SO2 Concentration in United States"
    }
    
    if(input$select=='d'){
      temp <- smalldata$CO
      label <- "CO Concentration in United States"
    }
    
  #  barplot(colSums(our_data[,c("NO2","O3", "SO2", "CO")]),
   #         ylab="Total",
    #        xlab="Census Year",
     #       names.arg = c("NO2","O3","SO2", "CO"),
      #      col = color)
  
    plot_ly(
      x = smalldata$Year,
      y = temp,
      name = "Concentration of Greenhouse Gas in United States by Year",
      type = "bar"
    ) %>%
      layout(xaxis = list(
              title = "Years"), 
              yaxis = list(
              title = label))
  })
  
}
