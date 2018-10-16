#' Rest call functions
#'
#' These functions are just to make specific rest calls to I Can Haz Dad Joke.
#'
#' @param baseUrl character. Base website, shouldn't change
#' @param endPoint character. API endpoint
#' @param queryParams list. Named list of query parameters
#' @param returnType character. Return format
#'
#' @return httr object
#'
#' @import httr

getRestCall <- function(baseUrl = "https://icanhazdadjoke.com",
                        endPoint = "",
                        queryParams = NULL,
                        returnType = c("application/json", "text/plain", "application/json")) {

  returnType <- match.arg(returnType)

  GET(baseUrl, path = endPoint, query = queryParams, accept(returnType))
}
