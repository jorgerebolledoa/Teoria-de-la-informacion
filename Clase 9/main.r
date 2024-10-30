Datos <- read.csv("past-rounded.csv", header = TRUE, sep = ",")



makeTS <- function( dates, times ) {
	hr <- substr( format( times ) , 1 , 2 )
	hr <- ifelse( hr!="  " , hr , "00" )		# ifesle() is like ? operator in C
	if(nchar(dates[1])<=6) {
        dates <- dates + 20000000
        dates[dates > 20800000] <- dates[dates > 20800000] - 1000000
    }
	TS <- ISOdate( year = substr( dates , 1 , 4 ) ,
		month = substr( dates , 5 , 6 ) ,
		day = substr( dates , 7 , 8 ) ,
		hour = hr ,
		min = substr( format( times ) , 3 , 4 ), tz="UTC" )
	return( TS )
}
Datos[,"TS"] <- makeTS(Datos[,"date"], Datos[,"time"])

pxy <- matrix(nrow = 12, ncol = 7)
for (i in 1:12) {
    print(i)
    for (j in 1:7) {
        print(j)
        pxy[i,j] <-sum(Datos[as.integer(format(Datos[,"TS"],"%m"))==i & 
        as.integer(format(Datos[,"TS"],"%m"))==(j+1),"O"], na.rm = TRUE)
    }
}


