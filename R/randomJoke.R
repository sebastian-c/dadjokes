#' Generate random joke from icanhazdadjoke.com
#'
#' Generates character of random joke from I can haz dad joke
#'
#' @export

randomJoke <- function(){

  reponse <- getRestCall(returnType = "text/plain")
  content(reponse, encoding = "UTF-8")

}
