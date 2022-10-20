kolada_api <- function(path){
  url <- paste0("https://api.kolada.se/v2/municipality?title=",path)
  resp <- httr::GET(url)
  data <- jsonlite::fromJSON(httr::content(resp,"text"),simplifyVector = FALSE)
  paste("INFORMATION\n","The ID of the city is",data[[2]][[1]][[1]],"\n","The type of the region is",data[[2]][[1]][[3]],sep =" ")
}
