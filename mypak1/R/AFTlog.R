#' @name AFTlog
#' @title create a log-logistic AFT model
#' @description  creates a log logistic AFT model with 1 predictor in a simple function
#' @param time a numeric vector representing time
#' @param delta a numeric vector representing survival status
#' @param x a vector representing the predictor
#' @param data the dataset the vectors reside in
#' @return log-logistic AFT model
#' @author Vlad
#' @export
#' @examples
#' library(survival)
#' data(rats)
#' mod1 <- AFTlog(rats$time,rats$status,rats$rx,rats)
#' mod1
AFTlog <- function(time,delta,x,data) {survival::survreg(survival::Surv(time,delta)~x,data,dist="loglogistic")}
