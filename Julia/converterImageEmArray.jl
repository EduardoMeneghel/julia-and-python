import Pkg
Pkg.add("ImageView")
Pkg.add("TestImages")
Pkg.add("Images")
Pkg.add("Colors")
using TestImages, ImageView, Images,Colors
img = load("relevo.png")
imgg = Gray.(img)
mat = convert(Array{Float64}, imgg)
arquivo = open("file.txt", "w")
println(arquivo, mat )
close(arquivo)