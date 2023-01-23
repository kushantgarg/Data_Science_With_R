# in this we will talk about data frames 
# in general we not make data frames by our own we usually import data to our 
# script and then apply data frame model 
# we use data.frame() to create a data frame

name<-c("john","peter","julie","bob","patrick")

age<-c(28,12,24,45,33)

children<-c(FALSE,TRUE,TRUE,FALSE,FALSE)

df<-data.frame(name,age,children)
fd
df
 # also we can do in different way

df<-data.frame(Name=name, Age=age, Children=children)
df
# generally we use str to print our data frame
str(df)

# generally the name here get converted into factorr instead of char so 
# to prevent it we will

df<-data.frame(Name=name, Age=age, Children=children,stringsAsFactors = FALSE)
df
str(df)
# but by defalut this value is set to charracter

# we can subset a data frame
# we can use [] [[]] or $ symbol

df
df[3,2] 
df[2,"Age"]

df[3,]
df["Age"]


df[c(1,3),c("Age","Children")]

# some basic o
seq(from=10,by=2,length.out=20)
 ?rnorm
?rnorm
r<-rnorm(1000,0,1)
print(r)
hist(r,50)
?hist
