loadGamelog <- function(season){
  baseURL <- "http://www.retrosheet.org/gamelogs/gl"
  fullURL <- paste0(baseURL, season, ".zip")
  downloadName <- paste0("data/gathered/gl", season, ".zip")
  download.file(fullURL, destfile = downloadName)
  
  unzip(downloadName, junkpaths = TRUE, exdir = "data/gathered")
  txtName <- paste0("data/gathered/GL", season, ".TXT")
  dfGameLog <- read.csv(txtName, stringsAsFactors = FALSE, header = FALSE)
  # file.remove(c(txtName, downloadName))
  file.remove(downloadName)
  
  dfGameLog
}

gl2012 <- loadGamelog(2012)
