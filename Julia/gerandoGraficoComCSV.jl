import Pkg
Pkg.add("CSV")
Pkg.add("DataFrames")
Pkg.add("Plots")
using CSV
using DataFrames
using Plots


csv_reader = CSV.File("arquivo.csv")
dado = []
idade = []
nota = []

for row in csv_reader
    push!(dado, row.dado);
    push!(idade, row.idade);
    push!(nota, row.nota);
end



#posição onde o dado será inserido
x = dado
#valor em linha da posição respectiva que será inserido
y = idade
#valor em ponto da posição respectiva que será inserido
y_noisy = nota
#imprime a linha
plot(x, y, label="Idade")
#imprime os pontos
plot!(x, y_noisy, seriestype=:scatter, label="Notas")