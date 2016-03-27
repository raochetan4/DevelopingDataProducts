library(shiny)
library(ggplot2)
library('ElemStatLearn')
dataset <- ozone


fluidPage(
  
  titlePanel("Ozone Data Plots"),
  
  sidebarPanel(
    
    sliderInput('sampleSize', 'Sample Size', min=1, max=nrow(dataset),
                value=min(1000, nrow(dataset)), step=500, round=0),
    
    selectInput('x', 'X', names(dataset)),
    selectInput('y', 'Y', names(dataset), names(dataset)[[2]]),
    selectInput('color', 'Color', c('None', names(dataset))),
    
    checkboxInput('jitter', 'Jitter'),
    checkboxInput('smooth', 'Smooth'),
    
    selectInput('facet_row', 'Facet Row', c(None='.', names(dataset))),
    selectInput('facet_col', 'Facet Column', c(None='.', names(dataset))),
    p(strong(em("Documentation:",a("Ozone Data Plots",href="READMe.html"))))
    
  ),
  
  mainPanel(
    tabsetPanel(
      tabPanel("Documentation", verbatimTextOutput("summary")),
      tabPanel("Plot", plotOutput('plot'))
    )
  )
)