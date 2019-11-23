#' @name AFTexp
#' @title create an exponential AFT model
#' @description  creates an exponential AFT model with 1 predictor in a simple function
#' @param time a numeric vector representing time
#' @param delta a numeric vector representing survival status
#' @param x a vector representing the predictor
#' @param data the dataset the vectors reside in
#' @return exponential AFT model
#' @author Vlad
#' @export
#' @examples
#' library(survival)
#' data(rats)
#' mod1 <- AFTexp(rats$time,rats$status,rats$rx,rats)
#' mod1

AFTexp <- function(time,delta,x,data) {survival::survreg(survival::Surv(time,delta)~x,data,dist="exponential")}
