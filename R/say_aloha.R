#' Say Good summer
#'
#' @param name (character) Name of the person to say good summer to
#' @param print_to_console (logical) Option to print your message. Defaults to TRUE
#'
#' @return (character) good summer message
#' @export
#'
#' @examples
#' # say good summer to Eliott
#' say_aloha("Eliott")
#'
#' @importFrom crayon bgYellow
#' @importFrom emo ji
#'
say_good_summer <- function(name, print_to_console = TRUE) {

  stopifnot(is.character(name))

  message <- paste("Have a good Summer ",
                   name,
                   emo::ji("palm_tree"),
                   emo::ji("sunny"),
                   emo::ji("ocean"))

  if (print_to_console) {
    cat(crayon::bgYellow(message))
  }

  invisible(crayon::bgYellow(message))
}
