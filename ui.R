library(shiny)
shinyUI(fluidPage(
  titlePanel("Gapminder Shiny app"),
  
  sidebarLayout(
    sidebarPanel(
      h1("Choose country and years from Gapminder data set"),
      uiOutput("choose_country"),
      sliderInput("year_range", 
                  label = "Range of years:",
                  min = 1952, max = 2014, 
                  value = c(1955, 2005),
                  format = "####")
    ),
    mainPanel(h3(textOutput("output_country"), align = "center"),
              plotOutput("ggplot_gdppc_vs_country"),
              tableOutput("gapminder_table")              
    )
  )
))
