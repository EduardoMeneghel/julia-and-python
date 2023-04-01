import Pkg
Pkg.add("Images")
Pkg.add("ImageView")
Pkg.add("Colors")
using Images
using ImageView
using Colors

imagem = load("relevo.png")
typeof(imagem)
size(imagem)
imshow(imagem)

imagemCinza = Gray.(imagem)
imshow(imagemCinza)