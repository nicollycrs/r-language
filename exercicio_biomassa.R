# O modelo alométrico de biomassa ajustado para árvores do Cerradão estabelece que a biomassa é dada pela expressão:
# b = e-1.7953 . d2.2974
#    onde e é o número de Euler, b é a biomassa estimada em kg, e d é o diâmetro à altura do peito(dap) em cm.
# Já um outro modelo para biomassa das árvores na mesma situação é:
#     ln(b) = -2.6464 + 1.9960.ln(d) + 0.7558.ln(h)
#    onde h é a altura das árvores em m.
# Calcule a biomassa estimada por cada modelo para uma árvore com dap de 15cm e altura de 12m. Coloque a estimativa do modelo alométrico em um objeto chamado biomassa1 e a estimativa do segundo modelo no objeto biomassa2.
#     Use exp(1) para obter o número de Euler
#     Mostre e compare as duas estimativas.

e <- exp(1) #Num de Euler

dap <- 15 #em cm
altura <- 12 #em cm

biomassa1 <- e^(-1.7953) * dap^2.2974
biomassa2 <- e^(-2.6464 + 1.9960*log(dap) + 0.7558*log(altura))