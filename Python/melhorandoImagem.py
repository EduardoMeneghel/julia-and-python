from PIL import Image
import  os, sys

imagem = Image.open(os.path.join(os.path.dirname(__file__), 'image.PNG'))

novaImagem = imagem.resize((400,400),Image.ANTIALIAS)
novaImagem.show()