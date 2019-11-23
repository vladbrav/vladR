#' @name AFTweib
#' @title create a weibull AFT model
#' @description  creates a weibull AFT model with 1 predictor in a simple function
#' @param time a numeric vector representing time
#' @param delta a numeric vector representing survival status
#' @param x a vector representing the predictor
#' @param data the dataset the vectors reside in
#' @return weibull AFT model
#' @author Vlad
#' @export
#' @examples
#' library(survival)
#' data(rats)
#' mod1 <- AFTweib(rats$time,rats$status,rats$rx,rats)
#' mod1

AFTweib <- function(time,delta,x,data) {survival::survreg(survival::Surv(time,delta)~x,data)}
