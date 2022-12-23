#Que No.1:

print("Sequence of numbers from 1 to 50:")
print(seq(1,50))
print("Sequence difference with 3 will be:")
print(seq(1, 50, by = 3))
print("Sequence difference with 5 will be:")
print(seq(1,50, by = 5))
print("Sequence difference with 10 will be:")
print(seq(1,50, by =10))

#Que No.2:
#There are 6 basic types of objects in the R language: 
#1.Vectors
#Atomic vectors are one of the basic types of objects in R programming. Atomic vectors can store homogeneous data types such as character, doubles, integers, raw, logical, and complex. A single element variable is also said to be vector.

# Create vectors
  x <- c(1, 2, 3, 4)

# Print vector and class of vector
print(x)
print(class(x))

#2. List
#List is another type of object in R programming. List can contain heterogeneous data types such as vectors or another lists.

# Create list
ls <- list(c(1, 2, 3, 4), list("a", "b", "c"))

# Print
print(ls)
print(class(ls))

#3. Matrices
#To store values as 2-Dimensional array, matrices are used in R. Data, number of rows and columns are defined in the matrix() function.
#Syntax:
  
matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE, dimnames = NULL)

x <- c(1, 2, 3, 4, 5, 6)

# Create matrix
mat <- matrix(x, nrow = 2)

print(mat)
print(class(mat))

#4. Factors
#Factor object encodes a vector of unique elements (levels) from the given data vector.

# Create vector
s <- c("spring", "autumn", "winter", "summer",
       "spring", "autumn")

print(factor(s))
print(nlevels(factor(s)))

#5. Arrays
#array() function is used to create n-dimensional array. This function takes dim attribute as an argument and creates required length of each dimension as specified in the attribute.
#Syntax:
  
  array(data, dim = length(data), dimnames = NULL)
  
  # Create 3-dimensional array
  # and filling values by column
  arr <- array(c(1, 2, 3), dim = c(3, 3, 3))
  
  print(arr)
  
#6. Data Frames
 # Data frames are 2-dimensional tabular data object in R programming. Data frames consists of multiple columns and each column represents a vector. Columns in data frame can have different modes of data unlike matrices.

  # Create vectors
  x <- 1:5
  y <- LETTERS[1:5]
  z <- c("Albert", "Bob", "Charlie", "Denver", "Elie")
  
  # Create data frame of vectors
  df <- data.frame(x, y, z)
  
  # Print data frame
  print(df)
  
  
  
#Que No.3:
  a <- c(1,2,3,4,5)
  b <- c('book', 'pen', 'textbook', 'pencil_case', 'notbook')
  c <- c(100,65,56,47,80)
  df1 <- data.frame(a,b,c)
  df1
  print(df1[3,2])
  df1 <- df1[-2,-3]
  print(df1)
  df1$d = c("new","new", "old", "old")
  df1
  
#Que No.4:
  no <- 7
  if (no < 0) {
    print(" Number is negative !")
  } else if (no == 0) {
    print(" Number is Zero !")
  } else
    print("Number is positive ! ")
  
#Que No.5:
  test1 = readline(prompt=" Enter anything : ")
  
  if ( is.character(test1)){
    print("Input is character")
  }else if ( is.numeric(test1)){
    print("Input is numeric")
  }
  
#Que No.6:
#The basic Function of Break and Next statement is to alter the running loop in the program and flow the control outside of the loop.
#Sometimes there will be such a condition where we need to terminate the loop to continue with the rest of the program. In such cases R Break statement is used.  
#Sometimes there will be such condition where we don’t want loop to perform the program for specific condition inside the loop. In such cases, R next statement is used.
  
 no <- 1:10
  
  for (val in no)
  {
    if (val == 5) 
    {
      print(paste("Coming out from for loop Where i = ", val))
      break
    }
    print(paste("Values are: ", val))
  }
 
 
 # R Next Statement Example
 
 no <- 1:10
 
 for (val in no)
 {
   if (val == 6)
   {
     print(paste("Skipping for loop Where i = ", val))
     next
   }
   print(paste("Values are: ", val))
 }
 
 
#Que No.7: 
 
x= c(1,5.6,3,10,3.5,5)
revx = rev(x)
print(revx)

#Que No.8: 
FindMode <- function(x) {
  u <- unique(x)
  u[which.max(tabulate(match(x, u)))]
}

abc = c("a","b","c","t","a","c","r","a","c","t","z","r","v","t","u","e","t")
df3 <- data.frame(abc)
apply(df3, 2, FindMode)

#Que No.9: 

data("iris")
View(iris)
iris_setosa <- iris %>% filter(Species == "setosa")
head(iris_setosa)

#Que No.10:

iris%>%rowwise()%>%mutate(Mean=mean(c(Sepal.Length, Sepal.Width, Petal.Length, Petal.Width)))

#Que No.11:
versicolor <- iris %>% filter(Species == "versicolor")
versicolor <- versicolor %>% select(Sepal.Length, Sepal.Width)

head(versicolor)

#Que No.12:
data("mtcars")
head(mtcars)
#scatter plot
ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point()
ggplot(mtcars, aes(x=wt, y=mpg)) +
  geom_point(size=2, color= 'red', shape=23)
#inference : as the weight increases mpg decreases

#boxplot
ggplot(mtcars, aes(x=as.factor(cyl), y=mpg)) + 
  geom_boxplot(fill= c("orange", "red", "blue"), alpha=0.2) + 
  xlab("cyl")

#inference there are outliers for 8cyl cars and as number of cylinder increases mpg decrases

#histogrm
ggplot(mtcars,aes(x=mpg)) + geom_histogram(binwidth=5,color="black", fill="orange" )+  xlab('Miles per Gallon')+ylab('Number of Cars')
 
#inferece it is slightly positive skewed

#lineplot
ggplot(mtcars, aes(x=wt, y=mpg))+geom_line()
#as weight increases mpg decreases

#bar plot

p<-ggplot(data=mtcars, aes(x=gear, y=mpg, fill=gear)) +
  geom_bar(stat="identity")+theme_minimal()
p

