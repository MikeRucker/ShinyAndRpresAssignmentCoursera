library(shiny)
shinyUI(fluidPage(
  titlePanel("Halloween Candy Tip for Healthy Teeth"),
  sidebarLayout(
    sidebarPanel(
      h4("Sort and Eliminate Strategy"),
      h5("After a long night of trick-or-treating, sit down with your kids and sort through the candy together. Besides checking for candy that may have been tampered with, take a look at the type of candy received, to determine if it meets your parental standards. Is the candy rock hard, just waiting to break a tooth? Is it super sticky, ready to adhere to their bands, brackets, and the ever important tooth's biting surface? If the candy your child received sets off an alarm in your mind, consider offering a trade for such candy. Set a limit of 1 to 5 cents per piece of candy, and buy back the offending candy. If you are faced with an exorbitant amount of unapproved candy, consider donating the candy to your local food bank."),
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