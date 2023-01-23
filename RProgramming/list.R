# Lisi is a generic vector that can contain objects of different type in one 
# dimesion
test<-c('musinc tracks',100,5)
test
class(test)
typeof(test)
# to create a list we makeuse of list function 
test=list("music",100,5)
test
 # to check weather its a list or not we use is.list() ffunction 
is.list(test)
class(test)

# using the name function 
# we can assign name to our list element and give them a label as
names(test)<-c("product","count","rating")
test
# so label has been assigned to each list item in a sequence
names(test)<-c("product")
test
#in case we give label to any one other label will come as NA

# we can access the elements of list as well as vector using the indices 
test[1]
test[2] # can access in these ways
test[-1] # select all exccept defined element 
test[c(1,3)]# select multiple 


# we can also assign name while making the list
 prod.category<-list(product="music", count=100, rating =5)
prod.category 

# to dispaly the list in compact and nice way we use str function 
str(prod.category)

#we can also add list to list 

nestedlist=list(product="music", count=100, rating =5)
prod.category=list(product="music", count=100, rating =5,nested=nestedlist)
prod.category
str(prod.category)
prod.category[[1]]
list_3=list(prod.category,nestedlist)
list_3
# we can also access the elemtns using the labes we have given them 
prod.category["product"]

# using [[]] brackets means you are just accessing the  object of list but using the
# single [] means you are accessing the list

# i can also use $ function to access the element
prod.category$count # afte $ just write the name of the label 



list_1<-list(c(10,20,30),c(10,20,30),c(10,20,30))
list_1
list[1]
list_1[1]
list_1[[1]]
class(list)
list1 <- list("a", "b", "c")
list2 <- list(1, 2, 3)
list3 <- c(list1,list2)
list3
2