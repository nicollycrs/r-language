quadrado <- function(x) {
  return (x^2)
}


multiplicacao_matrizes <- function(m1, m2) {
  return (m1 %*% m2)
}


media_idade <- function(df) {
  return (mean(df$idade))
}


max_idade <- function(df) {
  max(df$idade)
}