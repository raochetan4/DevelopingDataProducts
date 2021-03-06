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
    selectInput('facet_col', 'Facet Column', c(None='.', names(dataset)))
  ),
  
  mainPanel(
    tabsetPanel(
      tabPanel("Documentation", value = "A", HTML(paste("1. Requires ElemLearnStat package.", "2. Select X label as OZONE.","3. Select Y label as SOME OTHER VARIABLE."," 4. COLOR can be any other classifier variable which you think could be a 3rd dimensional distinguishing pointer.","5. SMOOTHING and JITTER function can be used to understand the smoothing and jitter effects in the data sets.",sep="<br/>"))),
      tabPanel("Plot", plotOutput('plot'))
    )
  )
)