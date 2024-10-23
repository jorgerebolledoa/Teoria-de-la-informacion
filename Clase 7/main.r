pxy <- matrix(data = c(1/8,1/16,1/32,1/32,1/16,1/8,1/32,1/32,1/16,1/16,1/16,1/16,1/4,0,0,0), nrow = 4, ncol = 4, byrow = TRUE)
px <- apply(pxy,MARGIN = 1, FUN = sum )
py <- apply(pxy,MARGIN = 2, FUN =sum )

H<- function(x) {
    x<-x[x>0]
    return(-sum(x * log2(x)))
} 
probY_x <- py[1]* H(pxy[1,]/py[1])+py[2]* H(pxy[2,]/py[2])+ py[3]* H(pxy[3,]/py[3])+py[4]*H(pxy[4,]/py[4])
probX_y <- px[1]*H(pxy[,1]/px)+px[2]* H(pxy[,2]/px)+ px[3]* H(pxy[,3]/px)+px[4]*H(pxy[,4]/px[4])
print("Probabilidad de Y dado X")
print(probY_x)
print("Probabilidad de X dado Y")
print(probX_y)

for (i in 1:dim(pxy)[2]) {
    selected<-pxy[i,]/py[i]
    probY_x<-probY_x+py[i]*H(selected)
}
