usethis::use_package_doc()
## *Modify 'R/Pression_Tota.R'
## * Call 'user_test' to create matching test fil
#' Pression totale d'une solution idéale

#' @param x_vecteur Vecteur de fractions molaires
#' @param P0_vecteur Vecteur des pressons de vapeur des corps purs
#' @return Pressin totale
#' @export
#' @examples
#' Pression_total(x_vecteur=c(0.2,0,8), P0_vecteur(2,5))
#'

Pression_totale<- function(x_vecteur, P0_vecteur){
  if(length(x_vecteur) != length(P0_vecteur)){
    stop('les vecteurs doivent avoir la meme longueur')
  }
  if(any(x_vecteur<0)|| any(x_vecteur>1)){
    stop('La fraction molaire doit etre comprise entre 0 et 1')
  }
  Pt<-sum(x_vecteur* P0_vecteur)
  return(Pt)
}
