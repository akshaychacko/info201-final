# Defines UI for shinyapp that renders a histogram
ui <- fluidPage(
  
  # Title
  titlePanel("Pollutant Info"),
  
  # Sidebar layout with input/output definitions 
  sidebarLayout(
    
    sidebarPanel(
      
      
      # Slider input to control bin size 
      sliderInput(inputId = "bins",
                  label = "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 25),
      
      
      # Radio buttons that allow user to change column of interest
      radioButtons("select", "Select dataset column of interest:",
                   list("NO2"='a', "O3"='b', "SO2"='c', "CO"='d')),
      
      tableOutput("futureData")
      
    
    ),
    
    
    
    # Main panel for displaying output
    mainPanel(
      tabsetPanel(
        tabPanel("Plot",
                 # fluidRow(...)
                 plotOutput(outputId = "histPlot"),
               #  plotOutput("bar",height = 500),
                 plotlyOutput("plot")
        )
      )
    )
  )
)

