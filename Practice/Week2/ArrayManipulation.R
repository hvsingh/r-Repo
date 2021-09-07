#This example needs to install ISLR package, make sure it is installed before progressing
    #install.packages('ISLR')
#next import the library
    #library(ISLR)

#initialize the array
A=matrix(1:16,4,4)
A

#peaking in the data, looking at the first row header, or first column header respectively
names(mtcars);
row.names(mtcars);

#Pick 1 element
A[2][1]

#Pick a sub matrix, this is a key here because the following command will
# select elements that are in row 1 and 3 and column 2 and 4
A[c(1,3),c(2,4)]

#pick a submatrix, this will select rows 1 through 3 and columns 2 through 4
A[1:3,2:4]

#or you can just pick one or many rows
A [1 ,] #printing row1
A [1:2 ,] #prinitng multiple rows

#or you can select the columns
A [, 1] #printing column1
A [, 1:2] #prinitng multiple column

# Or you can select all except ones mentioned
A[-c(1,3),] # will print all rows except 1 and 3; all columns

#Arrays can also be indesxed based on the names of the strucutres
mtcars[c("Mazda RX4", "Duster 360"), c("mpg", "cyl", "hp")]
#Or can be indexed as a combination of headers and numbers
mtcars[c(3,6,7), c("mpg", "cyl", "hp")]

#to find the dimenstions of a matrix or vector use dim
dim(A)


