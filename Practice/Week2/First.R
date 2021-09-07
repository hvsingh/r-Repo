#vector is one dimentional array
#This is one way to assign values to the variable x
x <- c(1,2,3)

#This is another one way to assign values to the variable y
y = c(1,6,2)

# List is a special vector, which can have different members, 
# not necessarily from the same class
mylist <- list(name="John Doe", wife="Catherine Doe", no.kids=2,
               kids.ages=c(11, 16))

#names gives the header of data

#length can give the length of the variable
length(x)
length(y)

#vectors can performance mathematical operations, but that is on each member of 
# the vector
x=x+100
x
x=x-100
x
x=x*x
x
x=x/x
x

#matrix is usually used for a 2 dimentional matrix
#matrix can be used to create a two dimensional data, ensure to give variable
#names like data, nrow and ncol, makes reading the code better
x=matrix(data=c(1,2,3,4), nrow=2, ncol=2)
x

#matrix
x=matrix(c(1,2,3,4) ,2,2)
x

#sqrt can be used to take square root of the variables
sqrt(x)

# or you can use the carrot too
x^0.5


#Generating random numbers
x=rnorm(n=50, mean=0,sd=1)
x
y=x+rnorm(n=50, mean=0,sd=50)
y
#generating a seq
x=seq(1:10)
x=1:20
x=seq(1, 20, length=40)

#Mean variance and correlation 
mean(x)
var(x)
sd(x)
cor(x,y)



