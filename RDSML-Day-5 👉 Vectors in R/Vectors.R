#vectors in R
# Creating a vector using c() command
student.heigt = c(60,69,55,62)
student.heigt
#checking the class of the vector.height
class(student.heigt)
is.numeric(student.heigt)
is.logical(student.heigt)
#R automatically concverts numeric to text
# when you have a text items in the vector
b = c( 5,8,2,"sv")
b
is.numeric(b)
#we can converts data types
#for example from numeric to character
a=c(1,2,3,4,5)
a
class(a)
a = as.character(a)
a
class(a)
#logical operatprs TRUE and FALSE when converted to numeric, TRUE converts to 1 and FALSE converts to 1
d = c(TRUE, FALSE, FALSE, TRUE, FALSE)
d = as.numeric(d)
d
class(d)
d = as.logical(d)
d
e = c(1,0,0,0,23,-7,0)
e = as.logical(e)
e
#creating sequential vector
my_seq = c(1:100)
my_seq
# sequntial funtion
seq = c(seq(1,10,by=3))
seq
names=c("mohi","sumon")
names
class(names)
names[1:1]
names[2:2]
#assigning names to vectors
my_values = c(4,7,9,11)
names(my_values) = c("a", "b", "c","d")

