participants_age = c(78,25,68,45,48,36)
summary(participants_age)

profession = c("doctor","teacher","teacher","businessmen","teacher")
summary(profession)
profession = factor(profession)
summary(profession)

birth_month = c("jan","dec","march", "apr","sep","jan","august","jan","dec")
summary(birth_month)
birth_month = factor(birth_month)
summary(birth_month)
#now make it order
birth_month_f = factor(bith_month, ordered = TRUE,levels = c("jan","feb","march","apr","dec","august",sep"))
summary(birth_month_f)

#list in R 
a = c(2,4,7)
b= c("Red","Green","Blue")
c ="welcome!"
my_list = list(a,b,c)                       
my_list                       
#naming the list items
my_list = list(pieces=a,colors=b,Message=c) 
my_list
#calling a specific data structure
my_list[1]
my_list[2]              
#another method
my_list["colors"]
#another method
my_list$pieces

#calling_specific items from the data structure
my_list$colors[1]
                       
                       