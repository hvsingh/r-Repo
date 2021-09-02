#Loading data, R sucks with resolving relative paths, always give full paths
#Read.table can be used to load tables
lolo=read.table("NFLX.csv",header=T,na.strings="?")

#prefer to use read.csv if using CSV
NFLX=read.csv("/Users/sonalsingh/Documents/Harsh/DataAnalytics/r-Repo/Practice/Week2/NFLX.csv",header=T,na.strings="?")

#fix can be used to view the data in columns but my R on mac, does not like this command
#fix(NFLX)

#get an idea of the data volume by looking at number of rows & columns
dim(NFLX)
#Also you can view the headers (of the columns)
names(NFLX)

#plot and identify
plot(NFLX$Open)
identify(NFLX$Open)

#reformat the date
NFLX$Date = as.Date(NFLX$Date, format="%Y-%m-%d")
summary(NFLX)

#prefer to use read.csv if using CSV
TSLA=read.csv("/Users/sonalsingh/Documents/Harsh/DataAnalytics/r-Repo/Practice/Week2/TSLA.csv",header=T,na.strings="?")
#reformat the date
TSLA$Date = as.Date(TSLA$Date, format="%Y-%m-%d")
summary(TSLA)

#find mean on the samples by close and months and mean
tapply(NFLX$Close, months(NFLX$Date), mean)
#find mean on the samples by close and months and mean
tapply(TSLA$Volume, weekdays(TSLA$Date), mean)

