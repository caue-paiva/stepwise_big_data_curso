
gerencia_cafeteria <- function(lista_pedidos, n_maquinas) {
   soma_pedidos <- sum(lista_pedidos)
  
   numero_batches <- soma_pedidos / n_maquinas
   if (numero_batches %% 1 == 0) { # divisao é um inteiro 
     tempo_preparacao <- numero_batches 
     tempo_espera <- (numero_batches-1) * 2
     return(tempo_espera + tempo_preparacao)
   } else {
      numero_batches <- ceiling(numero_batches)
      tempo_preparacao <- numero_batches 
      tempo_espera <- (numero_batches-1) * 2
      return(tempo_espera + tempo_preparacao)
   }
}

print(gerencia_cafeteria(c(1,1,2),2))