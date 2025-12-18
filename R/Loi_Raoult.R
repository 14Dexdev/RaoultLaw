usethis::use_r(name = 'Loi_Raoult')
## *Modify 'R/Loi_Raoult.R'
## * Call 'user_test' to create matching test fil
#' Pression partielle selon la loi de Raoult

#' @param x Fraction molaire du contituant
#' @param P0 Pression de vapeur du constituant pur (en Pa ou atm)
#' @return Pression partielle
#' @export
#' @examples
#' Pression_partielle(x=0.2,P0= 5)


Pression_partiel<- function(x,P0){
  if(!is.numeric(x)||!is.numeric(P0)){
    stop('Les arguments doivent etre numeriques')
  }
  if(x<0 || x>1) {
    stop('La fraction molaire doit etre comprise entre 0 et 1')
  }
  P<-x* P0
  return(P)
}

