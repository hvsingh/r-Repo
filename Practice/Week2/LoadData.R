#Loading data, R sucks with resolving relative paths, always give full paths
#Read.table can be used to load tables
lolo=read.table("StockA.csv",header=T,na.strings="?")

#prefer to use read.csv if using CSV
StockA=read.csv("/FULLPATH/r-Repo/Practice/Week2/StockA.csv",header=T,na.strings="?")

#fix can be used to view the data in columns but my R on mac, does not like this command
#fix(StockA)

#get an idea of the data volume by looking at number of rows & columns
dim(StockA)
#Also you can view the headers (of the columns)
names(StockA)

#plot and identify
plot(StockA$Open)
identify(StockA$Open)

#reformat the date
StockA$Date = as.Date(StockA$Date, format="%Y-%m-%d")
summary(StockA)

#prefer to use read.csv if using CSV
#StockB=read.csv("/FULLPATH/r-Repo/Practice/Week2/StockB.csv",header=T,na.strings="?")
#reformat the date
StockB$Date = as.Date(StockB$Date, format="%Y-%m-%d")
summary(StockB)

#find mean on the samples by close and months and mean
tapply(StockB$Close, months(StockB$Date), mean)
tapply(StockA$Close, months(StockA$Date), mean)
#find mean on the samples by close and months and mean
tapply(StockB$Volume, weekdays(StockB$Date), mean)

