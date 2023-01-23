# we will be making Project on time series analysis using time series energy data 

# time series is any data set where the values are measured at different points
#in time

# hourly weather management and many more
# time series can be regular as well as irregular 

#creating a dataframe from our datasets
mydata<-read.csv("/Users/kushantgarg/Desktop/opsd.txt",header=TRUE,row.names="Date")
# i have given head==true so as to tell that read my headings also and we have given 
# row names as date to make my date column as the index column
mydata
view(mydata)

#looking at the part of my data

head(mydata)
 tail(mydata)
 
 # retrieve the dimension 
 dim(mydata)

 
 
 # to check structure 
 
 str(mydata)

 #looking at the date column
 
 head(mydata$Date)# it is showing null because date as an column does not exist because we 
 # created it as a index 
 
 #looking at row name(indexes)
 row.names(mydata)

 # basically in data frame we created a index by defining the row.names()
 
 # so basicalyy we can also parse data without making our date column as a index
 
 mydata2<-read.csv("/Users/kushantgarg/Desktop/opsd.txt",header=TRUE)
 # now looking at the date column 
 str(mydata2$Date)

 # converti it into the date format
 
 x<-as.Date(mydata2$Date)
head(x)
class(x)
str(x)


# creating year , month and day column

year<-as.numeric(format(x,'%Y'))
head(year)

month<-as.numeric(format(x,'%m'))
head(month)

day<-as.numeric(format(x,'%d'))
head(day)

# so in above we have extracted day ,month and year form the date

# now we can add this extracred column to  existing data frame

mydata2<-cbind(mydata2,year,month,day)
head(mydata2)

mydata2[1:3,]

head(sample(mydata2,8))

# lets create a line plot of the full time series in germany 
# daily electricity consumption using data frame plot method

# using plot 

plot(mydata2$year, mydata2$Consumption,type = "l",xlab="year",
     ylab="consumption")
 #optiont 2
plot(mydata2$year, mydata2$Consumption,type = "l",xlab="year",
     ylab="consumption",lty=1,ylim=c(800,1700),xlim=c(2006,2018))

#better option 

#option3
#for one plot /window
par(mfrow=c(1,1))
# i can change the number of plot per window by changing 1 to 2par(mfrow=c(2,1))

plot(mydata2[,2])

#option 4

plot(mydata2[,2],xlab="year",ylab="consumption")
plot(mydata2[,2],xlab="year",ylab="consumption",type="l",lwd=2,col="blue")
plot(mydata2[,2],xlab="year",ylab="consumption",type="l",lwd=2,xlim=c(0,2018))
plot(mydata2[,2],xlab="year",ylab="consumption",type="l",lwd=2,xlim=c(2006,2018))
plot(mydata2[,2],xlab="year",ylab="consumption",type="l",lwd=2,xlim=c(2006,2018),
     ylim=c(900,2000),main="consumption graph")

# to understand the data more better and visualise it more effectly then 
#we can take log values of consumption and take diference of logs
plot(10*diff(log(mydata2[,2])),xlab="year",ylab="consumption",type="l",lwd=2,
     ylim=c(-5,5),main="comsumption Graph",col="orange")


# we can do it using GGPlot too 
install.packages("ggplot2")
library(ggplot2)
 #option 1

ggplot(mydata2)+geom_line(aes(x=year,y=Consumption))

#option 2
ggplot(data=mydata2 ,aes(x=year,y=Consumption,group=1))+geom_line()+
geom_point()

#option3
ggplot(data=mydata2 ,aes(x=year,y=Consumption,group=1))+geom_line(linetype="dashed")+geom_point()
ggplot(mydata2, mapping=aes(x=year,y=Consumption,col="red"))+geom_point()


#plot()  is good to go as it choose good one method to show or visualise the data
# in ggplot data is hard to read 


#plot solar and wind time series

#wind column 

min(mydata2[,3],na.rm=T)
max(mydata2[,3],na.rm=T)

#consumption column

min(mydata2[,2],na.rm=T)
max(mydata2[,2],na.rm=T)

#solar column 
min(mydata2[,4],na.rm=T)
max(mydata2[,4],na.rm=T)

#wind+solar column 

min(mydata2[,5],na.rm=T)
max(mydata2[,5],na.rm=T)

# for multple plots

par(mfrow=c(3,1))

#for
plot1<- plot(mydata2[,2],xlab="year",ylab="daily total (gwh)",type='l',lwd=2,main = "consumption",col="orange",ylim=c(840,1750))

plot1<-plot(mydata2[,1],mydata2[,2],xlab="year",ylab="daily total (gwh)",type='l',lwd=2,main = "consumptiona",col="orange",ylim=c(840,1750))  


#1plot/window
par(mfrow=c(1,1))



#lets plot time series in a single year to investigate further 

str(mydata2)

x<-as.Date(mydata2$Date)
head(x)
class(x)

# to convert date column into date format

modate<-as.Date(x,format="%m/%d/%Y")
 str(modate)

 mydata3<-cbind(modate,mydata2) 
str(mydata3)


mydata4<-subset(mydata3,subset=mydata3$modate >='2017-01-01' & mydata3$modate<='2017-12-31')
head(mydata4)

plot4<-plot(mydata4[,1],mydata4[,3],xlab="year",ylab="Daily Totals (GWh)",type="l",lwd=2,main="cons",col="yellow")
