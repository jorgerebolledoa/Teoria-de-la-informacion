Datos<-read.csv("past-rounded.csv", header = TRUE, sep = ",")

print((mean(Datos[,"O"]^ 2, na.rm=TRUE) - (mean(Datos[,"O"], na.rm=TRUE)^ 2))) 
print( var(Datos[,"O"], na.rm=TRUE))
print(apply(Datos[, c("F","L","M","N","O","P","Q","R","S","T","V")], MARGIN=2,FUN=mean, na.rm=TRUE))