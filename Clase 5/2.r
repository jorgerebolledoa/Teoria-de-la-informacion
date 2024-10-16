Datos<-read.csv("past-rounded.csv", header = TRUE, sep = ",")
U <- sort(x = unique(na.omit(Datos$O)), decreasing = TRUE)
P<-c()
for(i in 1:length(U)){
  P[i]<- sum(Datos$O == U[i], na.rm = TRUE)
}
plot(U,P,log="x")