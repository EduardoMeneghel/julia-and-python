import Pkg
Pkg.add("Plots")
using Plots
#posição onde o dado será inserido
x = [1,2,3,4,5,6,7,8,9,10]
#valor em linha da posição respectiva que será inserido
y = [9,8,7,6,5,5,3,2,1,0]
#valor em ponto da posição respectiva que será inserido
y_noisy = [1,3,5,7,9,6,8,2,5,9]
#imprime a linha
plot(x, y, label="linhas")
#imprime os pontos
plot!(x, y_noisy, seriestype=:scatter, label="pontos")