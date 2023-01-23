 # we will create and see all function relates to matrix here
#row wise
this.matrix<-matrix(1:6,nrow=2)
this.matrix
# col wise 
this.matrix<-matrix(1:6,ncol=2)
this.matrix
# when ever we try to fill less data in bog matrix it wil either repeat or give eror
matrix(1:3,nrow=2,ncol=3)
# matrix(1:4,nrow=3,ncol=2) it will give the error 

#cbind() and rbind() function 
cbind(1:3,1:3)
rbind(1:3,1:3)

# by default matrix will be arrange in a column fashion if you want to arrange it in a
 # row wise fasihion you have to mention byrow=true
matrix(1:6,byrow=TRUE,nrow=2)


# we can also give names to row as well as column 
# using rownames and colnames

rownames(this.matrix)<-c("row1","row2","row3")
dim(this.matrix)
this.matrix
#similiarly we can give colnames
dimnames(this.matrix)<-list(c("row1","row2","row3"),c("C1","C2"))
this.matrix                            
# dimname work both on row and column unlike rownames and colnames 
v<-20:30
matrix(v)
# if we didnt give any number of row or column to matrix it by default takes
# 1 column 
matrix(1:4,2)
