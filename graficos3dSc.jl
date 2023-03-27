import Pkg; 
Pkg.add("PlotlyJS")
Pkg.add("CSV")
Pkg.add("DataFrames")
using PlotlyJS, CSV, DataFrames
#Lendo CSV
dados = CSV.File("graficoSC.csv") |> DataFrame
matrix_dados = Matrix{Float64}(dados)
layout = Layout(
    title="Gráfico 3D",
    autosize=false,
    width=500,
    height=500,
    margin=attr(l=65, r=50, b=65, t=90)
)
plot(surface(z=matrix_dados), layout)