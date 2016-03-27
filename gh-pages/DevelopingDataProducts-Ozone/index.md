---
title       : 'Developing Data Products: R-shinyApp and Slidify'
subtitle    : 'Plot Ozone data : Understand effects wind, radiation on ozone'
author      : 'Chetan Rao'
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Problem Definition

1. Write a shiny application with associated supporting documentation for a user to get started using your application.
2. Deploy the application on Rstudio's shiny server
3. Share the application link by pasting it into the provided text box
4. Share your server.R and ui.R code on github
5. SHINY APP IDEA: Create an app to plot and understand OZONE data for new york.

--- .class #id 
## Requirements for the assignment

1. Some form of input (widget: textbox, radio button, checkbox, ...)
2. Some operation on the ui input in sever.R
3. Some reactive output displayed as a result of server calculations
4. You must also include enough documentation so that a novice user could use your application.
5. The documentation should be at the Shiny website itself.

--- .class #id 

## Ozone Dataset description

1. Data frame with components: ozone, radiation, temperature, and wind.
2. Measurements of daily 
    ozone con- centration (ppb)
    wind speed (mph)
    daily maximum temperature (degrees F)
    solar radiation (langleys) on 111 days from May to September 1973 in New York. 3. This data frame is similar to air in S-PLUS (or library(data) in S), but has a different definition for ozone (air contains cube-roots of ozone).
    
--- .class #id 
## Final Project

The final version of my project allows you to:

Enter any variable as the axis (X Y).
Color using any variable
Choose different themes for the chart display
Use it interactivly and get feedback immediately

--- .class #id 
