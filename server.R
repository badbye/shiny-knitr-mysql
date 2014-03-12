shinyServer(function(input, output) {
  output$downloadPDF <-
    downloadHandler(filename = "test.pdf",
                    content = function(file){
                      knit2pdf("test.Rnw")
                      file.copy("test.pdf", file)
                      unlink("figure", recursive = TRUE)
                    },
                    contentType = "application/pdf"
  )
})
