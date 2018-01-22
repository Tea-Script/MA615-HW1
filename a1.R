#Part 1

#originally I scanned this but I'll just put them in automatically here
x <- c(2, 0, 9, 7, 1, 5, 2, 2, 3, 3, 2, 2, 2, 3, 2, 8, 0, 1, 3, 4, 6)
length(x)
sum(x)
mean(x)

scan("./read_this_1.txt")
#edit("./read_this_1.txt") Here I edited the file and saved as a csv with the same name
read.csv(file = "./read_this_1.csv", header= FALSE, sep = " ") 
#Here I read in the csv with no header and values seperated by spaces
