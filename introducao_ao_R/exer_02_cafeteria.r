
gerencia_cafeteria <- function(lista_pedidos, n_maquinas) {
   soma_pedidos <- sum(lista_pedidos) #soma os pedidos
  
   numero_batches <- soma_pedidos / n_maquinas #numero de batches para fazer todos os cafes
   if (numero_batches %% 1 == 0) { # divisao é um inteiro 
     tempo_preparacao <- numero_batches  #1 min pra cada batch
     tempo_espera <- (numero_batches-1) * 2 #a ultima batch n vai ser limpada (seu tempo não vai contar pra o total) e cada batch leva 2 min
     return(tempo_espera + tempo_preparacao)
   } else { #num é fracional
      numero_batches <- ceiling(numero_batches) #vamos ter que completar o numero de batches referentes a parte inteira do numero + 1, então acha o teto
      tempo_preparacao <- numero_batches #cada batch leva 1 min pra preparar
      tempo_espera <- (numero_batches-1) * 2 #ultima batch n vai ser limpada
      return(tempo_espera + tempo_preparacao)
   }
}

print(gerencia_cafeteria(c(1,1,2),2))