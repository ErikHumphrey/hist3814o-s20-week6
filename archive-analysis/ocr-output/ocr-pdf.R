# install only the first time
install.packages('magick')
install.packages('tesseract')
install.packages('pdftools')

# tell R which packages you need
library(magick)
library(magrittr)
library(tesseract)
library(pdftools)

imgsource <- "wget-output"
myfiles <- list.files(path = imgsource, pattern = "pdf", full.names = TRUE)

lapply(myfiles, function(i){
  
  img_file <- pdftools::pdf_convert(i, format = 'tiff',  dpi = 400)
  
  text <- ocr(img_file)
  
  outfile <- paste(i,"-ocr.txt",sep="")
  
  cat(text, file=outfile, sep="\n")
})
