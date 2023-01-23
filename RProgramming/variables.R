x<-1
x
x
print(x)
#basicaly the output will be the [1] 1 that means that X is a vector and 1 is 
# first object of that vector 


#similiarly 
y<-" Hello world i am learning R "
print(y)


# to make a sequence of length 10 
x<- 10 :30 
print(x)
# <- is the assigment operator used in R language 


#mtcars is tha in build data set in R and we can use print func. to print it

x<- mtcars
print(x)

# R has 5 atomic classes 
# Logical 
# numeeric
# integer
#characters
#complex
# raw

 # all decimal numbers belong to numeric and all number ending with L belons to 
# integer class 

ch='Hello kanu '
print(ch) 
typeof(ch)
class(ch)
#we can use typeof() and class() function to know the type of variable

paste("hell0", "world")
paste("hell0", "world", sep=",")
paste0("hell0", "world")
# basically paste function provide a default space between the content
# where as pasteo function does not and continicate without the space 
# we can also provide seperator in case of pasete function.
paste("hell0", "world", sep="b")




# vectors :
#it stores object ofsame class unlike list that store objects of different class
# we use c() function to decalre the vetoo r

# numeric object is always a double precisional number in R
 
v1<-c(1,2,3,4,5) # we have declared a vector 
print(v1)  # printed a vector of numerical s


v2<-c("hello " ,"world")
print(v2)
print(paste(v2))
print(paste0(v2))


# we can also create a sequence 

l<-9:29. # this also means the vector and this sequence is of integer type
print(l)
class(l)



# creating vector using the vector funciton 
k<- vector("numeric",length=10 )
print(k)
# we have created a empty vector of class numeric and length 10 '
# vector(type,length =)


# concatenating both above
# making a mixed vector 
mixed_vec<-c(v1,v2)
print(mixed_vec)

# here number has been type casted to chatracters as char cant be casted to num

# in this way we  can merge two vetors
x=10
x


# characters vectors
ltrs=letters[1:10]
ltrs
# so basicaly to form a character array we use the keyword letter[ and define range in it]

# factors vector
fac=as.factor(v1)
fac
#as.factor fucntion is a function that categories objects in levels

c<-7
print(as.character(c))


# forcefull typecasting can be done using as.funciton in the R 
# for example we can convert numeric to char as as.character(x)
# when R is unable to figure our the casted resultit will result into 
# NA produced or misssing in the entries




# some basic operaiton on vector 

v1<-c(1,2,3)
v2<-c(3,4,5,NA)
v1<-v1+v2

v2
sum(v2)
na.omit(v2[v2<4])
v2
sum(v2)
