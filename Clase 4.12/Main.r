Datos <- read.csv("past-rounded.csv", header = TRUE, sep = ",")
npre13 <- Datos[as.integer(format(Datos[,"T"],"%T"))<2013,"N"]
x <- sort(unique(npre13))
px <- x * NA 
plot(x, px)
py <- y * NA
dkl <- function(px, py) {
    px <- px / sum(px)
    py <- py / sum(py)
    return(sum(px * log(px / py)))
}
print(dkl(px, py))
print(dkl(py, px))


