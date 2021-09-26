<p align="center"><a href= target="_blank"><img src= "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Escudo-UdeA.svg/240px-Escudo-UdeA.svg.png"></a></p>

# Procesamiento de imágenes térmicas provenientes del muñón de pacientes con amputación transfemoral para identificar áreas de interés

# Elaborado por
Laura Natalí Flórez Valencia
Manuela Rendón Ochoa
Paula Andrea Zuluaga Gómez
Programa de Bioingeniería, Universidad de Antioquia

# Resumen
Con el fin de mejorar la calidad de vida de personas con algún tipo de amputación, se han buscado
diferentes alternativas para la rehabilitación de estos pacientes, las cuales corresponden
principalmente a la implementación de terapias físicas y la sustitución del miembro mutilado por
medio de equipos protésicos. Sin embargo, en algunas ocasiones la adaptabilidad del paciente con
su prótesis no es óptima, por lo que se sugiere que cada paciente obtenga una prótesis que se adapte
a sus necesidades particulares. Es por esto que se decidió abordar esta problemática utilizando
técnicas de procesamiento de imágenes, específicamente imágenes térmicas, y de esta manera
conocer el comportamiento de la temperatura en el miembro residual cuando está en contacto con el
socket de la prótesis, con el propósito de mejorar el proceso de adaptación con el dispositivo.
La manera en la que se decidió abordar esta problemática, consistía en encontrar una relación entre
la temperatura del miembro amputado y distintos factores que determinaban el confort del paciente
usando su prótesis.
Para esto, se elaboró un algoritmo en MATLAB que permitió procesar imágenes térmicas
provenientes de la vista posterior del muñón de pacientes con amputación transfemoral. Las
imágenes térmicas utilizadas fueron proporcionadas por el estudiante de doctorado Andrés Mauricio
Cárdenas, fueron tomadas en la fundación Mahavir Kmina a partir del muñón de 13 pacientes con el
tipo de amputación de interés. A cada paciente se le tomó una imagen térmica de referencia y se le
indicó que marchara para 5 alineaciones diferentes de su prótesis, tomando después de la marcha,
para cada alineación, una imagen térmica. Además, posterior a la caminata el paciente respondió
una encuesta de confort de dónde se obtienen parámetros tales como la motivación, el confort, el
ajuste de su prótesis, el rendimiento de su marcha y el dolor al usar la prótesis para la alineación
correspondiente.
Las imágenes térmicas fueron segmentadas haciendo uso del algoritmo realizado, esto con el fin
subdividir las áreas donde se presentó un aumento en la temperatura y encontrar una relación
porcentual de estas respecto al área total del muñón. La relación porcentual entre áreas de interés y

el área total del muñón se obtuvo realizando una comparación entre la intensidad de los píxeles de
la imagen de referencia tomada inicialmente y la imagen para cada alineación. La información
obtenida de las imágenes permitió encontrar la relación existente entre los parámetros de la encuesta
de confort y el aumento de la temperatura en el muñón luego de cada alineación, es decir, con el
aumento en la intensidad del píxel que conforma la imagen térmica.
Como resultado se obtuvo que posterior a cada caminata realizada por los pacientes, se presenta un
aumento en la temperatura en el muñón. Sin embargo, a partir del estudio realizado no fue posible
analizar de forma grupal la relación existente entre el aumento de temperatura y la comodidad del
paciente al usar su prótesis, debido a que no se encontró una tendencia general en los resultados
obtenidos para todas las personas. Lo anterior, dado que los datos obtenidos de las encuestas de
confort no son representativos, debido a que las respuestas están sujetas a la subjetividad de cada
persona.
