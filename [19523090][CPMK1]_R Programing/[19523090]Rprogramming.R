install.packages("matlib")
library(matlib)
#Sayyid Anfaresi
#19523090'

#1
#Define the column and row names
A<- matrix(1:9, nrow=3, byrow=TRUE, dimnames = list(c("row1","row2","row3"), c("col1","col2","col3")))
#Find the diagonal matrix A
diag(A)
#Find the determinat of matrix A
det(A)
#find the inverse of matrix
solve(A)
#Calculate matrix tranpose A x A
matrice <- t(A)%*%A
#Compute eigenvalue and eigenvektor of matrix A
eigen(A)

#2
B <- matrix(c(1,1,3,5,2,6,-2,-1,-3), 3,3,TRUE)
#cek apakah matrix B^3 = O yang mana matrix O
#merupakan matrix 3x3 yang setiap entry berisi 0
B3 <- B%*%B%*%B
O <- matrix(c(0,0,0,0,0,0,0,0,0),3,3, TRUE)
B3 == O
#Tukar kolom ke-3 dengan hasil dari penjumlahan
#kolom ke-2 dan ke-3
B[,3] <- (B[,2] + B[,3])
B

#3
#matrix M
M <- cbind(c(1,3,2),c(2,8,9))
#matrix N
N <-rbind(c(5,4),c(8,2))
#find M.N
M%*%N
#find M.N^-1
M %*% solve(N)
#find M.tranpose N
M%*%t(N)
#find 3((M.N^-1+M.tranpose N))
3*(M%*%solve(N)+M%*%t(N))

#4
#diberikan sistem persamaan berikut:
#x-2y+3z =7
#2x+y+z=4
#-3x+2y-2z =-10

#show the equation
D <-rbind(c(1,-2,3),c(2,1,1),c(-3,2,-2))
E <- c(7,4,-10)
showEqn(D,E)
#find the solution
solve(D,E)
#plot the equation
plotEqn3d(D,E)
#find the solution by using reduced echelon form
echelon(D,E)

#5
X<- matrix(1:9, nrow=3, byrow=TRUE)
Y<-X
if(Y[1,1] == X[1,1]) { 
  Y[Y<4]<-0;Y
  for(i in 2:3){
    Y[i,1] <-1;Y
  }
  print("berhasil")
}else
  print("gagal")
Y
