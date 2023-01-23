install.packages("dplyr")
# in this way we can install dplyr to manupulate the data
library("dplyr")
view(mtcars)
View(flights)
by_gear<-mtcars%>% group_by(gear)
View(by_gear)
head(mtcars)
head(by_gear)
?group_by
?seq()
arrange(by_gear,cyl)
?desc
?gather
?del
?del
?delete
??delete
?datamining
?data min
library(MASS)
?MASS
MASS
view(MASS)
View(MASS)
?pushViewport
?dataViewport
library(grid)
