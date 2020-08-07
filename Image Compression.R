library(jpeg)
getwd()
setwd("C:\\Users\\ASUS\\Desktop\\R_New_Asus")
image=readJPEG("katia.jpg")
dim(image)
writeJPEG(image,"Testing.jpg")
r=image[,,1]
g=image[,,2]
b=image[,,3]
image.r.pca=prcomp(r,center = FALSE)
image.g.pca=prcomp(g,center = FALSE)
image.b.pca=prcomp(b,center = FALSE)
rgb.pca=list(image.r.pca,image.g.pca,image.b.pca)
ncomp=50
### X=P*t(A)
R=image.r.pca$x[,1:ncomp]%*%t(image.r.pca$rotation[,1:ncomp])
G=image.g.pca$x[,1:ncomp]%*%t(image.g.pca$rotation[,1:ncomp])
B=image.b.pca$x[,1:ncomp]%*%t(image.b.pca$rotation[,1:ncomp])

