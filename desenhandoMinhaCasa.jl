import Pkg; 
Pkg.add("SimpleDraw")
import SimpleDraw as SD

#imagem de 32 por 32
imagem = falses(32, 32)

#possui cor
cor = true

#chão, telhado e paredes
linhas = [[32,1,32,32],[31,11,24,11],[31,22,24,22],[23,11,23,22], [24,8,16,16],[16,17,24,25]]
for posicao in linhas
    linha = SD.Line(SD.Point(posicao[1], posicao[2]), SD.Point(posicao[3], posicao[4]))
    SD.draw!(imagem, linha, cor)
end

#porta
quadrado = SD.FilledRectangle(SD.Point(26,13), 6, 4)
SD.draw!(imagem, quadrado, cor)

#janela
quadrado = SD.FilledRectangle(SD.Point(26,19), 2, 2)
SD.draw!(imagem, quadrado, cor)

#sol
circulo = SD.FilledCircle(SD.Point(-5,-5),14)
SD.draw!(imagem, circulo, cor)

SD.visualize(imagem)