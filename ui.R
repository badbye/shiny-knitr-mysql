library(shiny)
library(knitr)
library(RMySQL)

shinyUI(pageWithSidebar(
  headerPanel("Test for Shiny+knitr+MySQL"),
  sidebarPanel("This simple test",
               "to combine shiny, knitr and MySQL",
               br(),
               br(),
               "The source code is available on GitHub:",
               a(href = "https://github.com/thirdwing/shiny-knitr-mysql",
                 "https://github.com/thirdwing/shiny-knitr-mysql")
  ),
  mainPanel(
    wellPanel(textInput("name", "Reporter Name:", "Qiang Kou")),
    wellPanel(textInput("chrom", "#chrom:", "10")),
    downloadButton("downloadPDF", "Download shiny PDF report")
  )
))
