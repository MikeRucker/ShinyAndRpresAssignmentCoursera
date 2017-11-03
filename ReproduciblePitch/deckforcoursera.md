2017 Halloween Shiny Project of Coursera
========================================================
author: Mike Rucker, Ph.D
date: 10/31/2017 (Halloween)
autosize: true

Project Introductioin
========================================================

<br /><font size = "36px">This Shiny project was a fun take on a timely topic - kids
and candy on Halloween. It informs the user about a strategy
to help limit a kid's candy intake, while providing them
a budget calculator for the intervention's protocol.<br /><br /> 

The slides to follow provide the code for my Shiny project.</font>


ui.R code
========================================================


```r
library(shiny)

shinyUI(fluidPage(
  titlePanel("Halloween Candy Tip for Healthy Teeth"),
  sidebarLayout(
    sidebarPanel(
      h4("Sort and Eliminate Strategy"),
      h5("After a long night of trick-or-treating..."),
      h6("Potential budget in dollars ($):"),
      textOutput("text")
    ),
    mainPanel(
      h1("Please indicate you child's candy count and the price you are willing to pay per piece:"),
      sliderInput("candy", "Pieces of candy:", 1, 300, 1),
      sliderInput("cost", "Cost per piece of candy:", .01, .05, .01, .01)
    )
  )
))
```

<!--html_preserve--><div class="container-fluid">
<h2>Halloween Candy Tip for Healthy Teeth</h2>
<div class="row">
<div class="col-sm-4">
<form class="well">
<h4>Sort and Eliminate Strategy</h4>
<h5>After a long night of trick-or-treating...</h5>
<h6>Potential budget in dollars ($):</h6>
<div id="text" class="shiny-text-output"></div>
</form>
</div>
<div class="col-sm-8">
<h1>Please indicate you child's candy count and the price you are willing to pay per piece:</h1>
<div class="form-group shiny-input-container">
<label class="control-label" for="candy">Pieces of candy:</label>
<input class="js-range-slider" id="candy" data-min="1" data-max="300" data-from="1" data-step="1" data-grid="true" data-grid-num="9.96666666666667" data-grid-snap="false" data-prettify-separator="," data-keyboard="true" data-keyboard-step="0.334448160535117" data-drag-interval="true" data-data-type="number"/>
</div>
<div class="form-group shiny-input-container">
<label class="control-label" for="cost">Cost per piece of candy:</label>
<input class="js-range-slider" id="cost" data-min="0.01" data-max="0.05" data-from="0.01" data-step="0.01" data-grid="true" data-grid-num="4" data-grid-snap="false" data-prettify-separator="," data-keyboard="true" data-keyboard-step="25" data-drag-interval="true" data-data-type="number"/>
</div>
</div>
</div>
</div><!--/html_preserve-->


server.R
========================================================

```r
library(shiny)
shinyServer(function(input, output) {
  output$text <- renderText(input$candy * input$cost)
})
```


Acknowledgments
========================================================

I would like to acknowledge my Verywell.com colleague 
Shawn Watson: https://www.verywell.com/shawn-watson-1058877

The inspiration for the assignment can be found here: https://godleystationdental.com/top-halloween-candy-tips-for-healthy-teeth

Shiny URL: https://mikerucker.shinyapps.io/2017_halloween_shiny_project_of_coursera

Github Repo: https://github.com/MikeRucker/ShinyAndRpresAssignmentCoursera
