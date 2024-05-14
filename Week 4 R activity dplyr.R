#Week 4: dplyr package

#Task: Write the function to get a dataset from Base R: Titanic
#and give the dataframe a new name of your choice
#(hint: you will want your data to be a dataframe. Use the function: as.data.frame(Titanic))
week4<-as.data.frame(Titanic)
#See the top rows of the data
#TASK: Write the function to see the top rows of the data
#THIS WORKED AFTER I UPLOADED dplyr:
slice(.data = week4, 1:5)
#Install and call the package dplyr
#TASK: Write the functions to install and call dplyr
library(package = "dplyr")
#Let's just see the Survived and Sex columns
#Task: Write the function to 'select' the Survived and Sex columns 
#(hint: use the 'select' function)
select(.data = week4, c(2, 4))
#Let's name the dataset with just the two columns, Survived and Sex
#TASK: Write the function to save the two columns as one new dataset
#and give it a name
week4ss<-select(.data = week4, c(2, 4))

#Let's get rid of the Sex column in the new dataset created above
#TASK: Write the function that deselects the sex column
#(hint: use the 'select' function to not select a -column)
week4ss<-select(.data = week4ss, c(2))
#Let's rename a column name
#TASK: Write the function that renames 'Sex' to 'Gender'
week4 <- rename(.data=week4, gender=Sex)
#Let's make a new dataframe with the new column name
#TASK: Write the function that names a new dataset that includes the 'gender' column
week4x<-week4
#Let's 'filter' just the males from our dataset
#TASK: Write the function that includes only rows that are 'male'
week4males <- filter(.data = week4x, gender == 'Male')
#Let's 'arrange' our data by gender (not the data you just filtered)
#TASK: Write the function to group the data by gender (hint: arrange())
arrange(.data = week4, gender)
#Let's see how many people were examined in the dataset (total the frequency in the original dataframe)
#TASK: Sum the Freq column
#TASK: After you run it, write the total here:2201____
sum(week4$Freq)
#Since we have a males dataset, let's make a females dataset
#TASK: Write the function that includes only rows that are 'female'
week4females <- filter(.data = week4, gender == 'Female')
#And now let's join the males and females
#TASK: Write the function that joins the male and female rows 
#(hint: try using 'union' or 'bind_rows')
union(week4males,week4females)

#Optional Task: add any of the other functions 
#you learned about from the dplyr package

