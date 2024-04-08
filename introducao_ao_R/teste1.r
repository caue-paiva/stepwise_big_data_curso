
val_int <- 1

vec1 <- c(1, 2, 3)
vec2 <- c(0, 1, 3)

avg1 <- sum(vec1)
avg1 <- avg1 / length(vec1)

avg2 <- sum(vec2)
avg2 <- avg2 / length(vec2)

avg_vec <- c(avg1, avg2)

if (all(avg_vec >= 2)) {
  print("aprovado")
}else {
  print("reprovado")
}