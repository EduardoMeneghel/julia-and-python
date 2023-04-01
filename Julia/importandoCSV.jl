import Pkg
Pkg.add("CSV")
Pkg.add("DataFrames")
Pkg.add("Plots")
using CSV
using DataFrames
using Plots

#abrindo csv e lendo ele
csv_reader = CSV.File("arquivo.csv")

#fazendo for para pegar dados da planilha e imprimir na tela
for row in csv_reader
    println("Posição da coluna $(row.dado)");
    println("Idade do aluno $(row.idade)");
    println("Nota do aluno $(row.nota)");
end