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
npre13 <- Datos[as.integer(format(Datos[,"TS"],"%Y"))<2013,"N"]
x <- sort(unique(npre13))

px <- x * NA 
for (i in 1:length(x)) {
    px[i] <- sum(npre13==x[i], na.rm = TRUE)
}
plot(x, px)

npost13 <- Datos[as.integer(format(Datos[,"TS"],"%Y"))>2013,"N"]
y <- sort(unique(npost13))
py <- y * NA
for (i in 1:length(y)) {
    py[i] <- sum(npost13==y[i], na.rm = TRUE)
}

points(y, py, col = "red", pch = 20)

dkl <- function(px, py) {
    px <- px / sum(px)
    py <- py / sum(py)
    return(sum(px * log(px / py)))
}
print(dkl(px, py))
print(dkl(py, px))


