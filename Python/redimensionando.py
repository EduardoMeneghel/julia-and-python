from PIL import Image
import  os, sys

im = Image.open(os.path.join(os.path.dirname(__file__), 'image.PNG'))
im.save("test-600.png", dpi=(600,600))