vec1 <- c(1, 2, 3, 6, 6)



minha_mediana <- function(lista_numeros) {
   tam = length(lista_numeros) # nolint

  if (tam %% 2 == 0) {
    index <- round(tam/2) + 1
    print(vec1[index])
  } else { 
    index <- floor(tam/2) + 1
    print(vec1[index])
  }

}

minha_mediana(vec1)


