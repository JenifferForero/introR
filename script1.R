#####################################
#   UNIVERSIDAD SERGIO ARBOLEDA     #
# PROGRAMA ING DE SISTEMA Y TELECO  #
#           Jeniffer Forero         #
# jenifferp.forero@correo.usa.edu.co#
#       INTRODUCCION A R            #
#####################################

#cargamos el dataset en la variable 'admision'

url<-'https://raw.githubusercontent.com/leyderpacheco/data1/main/Admission_Predict.csv'
admision<-read.csv(url, header = TRUE, sep = ',')

#si se quiere presentar el dataset desplegado
View(admision)

#los vectores se crean como la inicial de c y la tupla de elementos que corresponden

vector_prueba <- c(1,2,3,4,5)
vector_prueba2 <- c('Sistemas','Electronica','Civil','Ambiental')

#Estadisticas del dataset

#Se quiere sacar el promedio de la columna SOP de el dataset admision

mean(admision$SOP)

################################################################
#se requiere crear un dataset

salarioAnual<- c(72000,85000,75000,115000,120000,98000,102000)
familia.grupo <- c(3,5,6,2,1,2,4)
tipo.auto <- c('lujo','Compacto','Mediano','Lujo','Compacto','Mediano','Lujo')


#se crea el dataframe
dataFamilia <- data.frame(salarioAnual,familia.grupo,tipo.auto)

#queremos ver a dataFamilia
View(dataFamilia)

#se quiere imprimir el nombre de las columnas de los dataframe
names(admision)
names(dataFamilia)

#se quiere presentar un resumen estadistico del dataframe
summary(admision)

#resumen estadistico de la familia
summary(dataFamilia)

#se quiere sacar la desviacion estandar de la columna SOP
sd(admision$SOP)

#se requiere ver porciones o vistas del dataframe
#desde la fila 1 hasta la 3, columnas desde la 3 hasta la 6
admision[1:3,3:6]
admision[1:3,c(3,4,5,6)]
admision[1:3,c('TOEFL.Score','University.Rating','SOP','LOR')]

#se requiere presentar los 'TOEFL.Score' mayores que 112 y el 'Chance.of.Admit' superior al 83%

admision[admision['TOEFL.Score'] > 112 & admision['Chance.of.Admit'] > 0.83]
admision[admision$TOEFL.Score >112 & admision$Chance.of.Admit >0.83 ,]


#se requiere presentar los que tengan un 'Chance.of.admit' superior  95%
#o los que tengan un 'TOEFL.Score' superior a 117
admision[admision$TOEFL.Score >117 & admision$Chance.of.Admit >0.95 ,]

#se requiere presentar los que tengan un 'Chance.of.admit' igual  95%
#o los que tengan un 'TOEFL.Score' igual a 117
admision[admision$TOEFL.Score ==117 | admision$Chance.of.Admit ==0.95 ,]

#se requiere presentar los que tengan un 'Chance.of.admit' igual  95%
#y los que tengan un 'TOEFL.Score' igual a 117
admision[admision$TOEFL.Score ==117 & admision$Chance.of.Admit ==0.95 ,]

