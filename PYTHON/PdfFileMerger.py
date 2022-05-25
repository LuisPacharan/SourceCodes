
# PyPDF2 Agrupa archivos de PDF en un solo documento

from PyPDF2 import PdfFileMerger

#pdfs = ["C:/Downloads/archivo_1.pdf", "C:/Downloads/archivo_2.pdf"]
pdfs = ["C:/Desktop/salida_prueba.pdf", "C:/Desktop/1.pdf","C:/Desktop/2.pdf"]
nombre_archivo_salida = "Archivos.pdf"
fusionador = PdfFileMerger()

for pdf in pdfs:
    fusionador.append(open(pdf, 'rb'))

with open(nombre_archivo_salida, 'wb') as salida:
    fusionador.write(salida)