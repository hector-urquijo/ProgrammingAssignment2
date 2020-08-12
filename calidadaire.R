library(datasets)
head(airquality)
s <- split(airquality ) #airquality$Month
sapply(s,function(x) colMeans(x[, c("Ozone", "Solar.R","Wind")], na.rm = TRUE ))
sum(airquality$ozone)
medozone<- airquality[1] #nro de columna del ozone
medozone<- airquality[1][5] #nro de columna del ozone
sapply(medozone,mean ,na.rm =TRUE)#media de ozone
sapply(medozone,sum ,na.rm =TRUE)

vapply(airquality, class, character(1))
tapply(airquality$Ozone, airquality$Temp, mean)

names(airquality) #nombre de los campos de la tabla airquality
head(airquality, 10)#Ver las 10 primeros filas de la tabla airquality
tail(airquality,15)#Ver las 15 ultimas filas de la tabla airquality
table(airquality$Ozone) #resumen tabla airquality
str(airquality) #muestra resumen de la tabla airqualty
abs()