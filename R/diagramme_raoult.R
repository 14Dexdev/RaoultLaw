usethis::use_package_doc()
## *Modify 'R/diagramme_raoult.R'
## * Call 'user_test' to create matching test fil
#' Diagramme de representaion de la pression partielle en fonction du facteur molaire
#' @param x fraction molaire
#' @param P0 Pression vapeur du corps pur
#' @export

diagramme_raoult<- function(x, P0){
  plot(x, x * P0,
       type= '4',
       xlab= 'Fraction molaire',
       ylab= 'Fracton Partielle',
       main= 'Loi de Raoult')
  grid()
}

