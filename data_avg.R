install.packages("plyr")
library(plyr)

x = read.table(file.choose(DataSet),header = TRUE,sep = ",") ##importing the dataset
x   ##printing the dataset
y = ddply(DataSet, "Sex", transform, Grade.Average=mean(Grade))  ##sorting by sex and calculating the mean
y
write.table(y,"Sorted_Average")  ##creating a file for the newly created table

write.table(y,"Sorted_Average", sep = ",")  ##seperating the data with commas

newx = subset(x,grepl("[iI]",x$Name))  ##sorting the data to only show names with "i" or "I"
newx
write.table(newx,"DataSubSet",sep = ",")  ##saving the new table
                 