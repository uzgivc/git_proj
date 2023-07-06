#"C:/smth/download/4_late/Efficacy_Status_ADAPTlate_20220905.xlsx"
#base R

#"1" - функція "scan" відкрити файл
#"4.5" - перенос даних з файлу до матриці поклітинно.
#path_out="~/Documents/R/Riffonomas/distances/"
# distances <- scan("mice_simple.braycurtis.dist", 
#                   what=character(), 
#                   quiet = TRUE, 
#                   sep = "\t")
# n_samples <- as.numeric(distances[1])
# distances <- distances[-1]
# 
# dist_matrix <- matrix(0, nrow = n_samples, ncol = n_samples)
# samples <- rep("", n_samples) #= repeat "" 10 times, n_sample=10
# 
# samples[1] <- distances[1]
# distances <- distances[-1]
# 
# samples[2] <- distances[1]
# distances <- distances[-1]
# 
# dist_matrix[2, 1] <- as.numeric(distances[1]) 
# distances <- distances[-1]
# 
# samples[3] <- distances[1]
# distances <- distances[-1]
# 
# dist_matrix[3, 1:2] <- as.numeric(distances[1:2]) 
# distances <- distances[-c(1,2)]
# 
# samples[4] <- distances[1]
# distances <- distances[-1]
# 
# dist_matrix[4, 1:3] <- as.numeric(distances[1:3]) 
# distances <- distances[-(1:3)]
# 
# samples[5] <- distances[1]
# distances <- distances[-1]
# 
# dist_matrix[5, 1:4] <- as.numeric(distances[1:4]) 
# distances <- distances[-(1:4)]
# 
# samples[6] <- distances[1]
# distances <- distances[-1]
# 
# dist_matrix[6, 1:5] <- as.numeric(distances[1:5]) 
# distances <- distances[-(1:5)]
# 
# samples[7] <- distances[1]
# distances <- distances[-1]
# 
# dist_matrix[7, 1:6] <- as.numeric(distances[1:6]) 
# distances <- distances[-(1:6)]
# 
# samples[8] <- distances[1]
# distances <- distances[-1]
# 
# dist_matrix[8, 1:7] <- as.numeric(distances[1:7]) 
# distances <- distances[-(1:7)]
# 
# samples[9] <- distances[1]
# distances <- distances[-1]
# 
# dist_matrix[9, 1:8] <- as.numeric(distances[1:8]) 
# distances <- distances[-(1:8)]
# 
# samples[10] <- distances[1]
# distances <- distances[-1]
# 
# dist_matrix[10, 1:9] <- as.numeric(distances[1:9]) 
# distances <- distances[-(1:9)]

#"2"#!СТВОРЕННЯ ВЕКТОРА
# #функція c() - створення вектора
# #all values in a vector are the same type
# c(12, 2, 6)
# c(T, F, T)
# c("a", "b", "c")
# c(1, "b", TRUE) #- vector character type
# c(1, 2, 3, TRUE, FALSE) #- vector convert T and F to 1/0
# as.logical(c(0, 1, 2, TRUE, FALSE)) #- all vector convert to T and F
# as.numeric(c(0, 1, 2, TRUE, FALSE)) # 0 1 2 1 0
# #неможливо конвертнути букви в as.numeric, але цифри конвертнути в as.character це ок.
# 1:5 #= 1 2 3 4 5
# pi:10
# seq(from=0, to=100, by=10) #= 0  10  20  30  40  50  60  70  80  90 100
# seq(2, 10, 2) #= 2  4  6  8 10
# rep("a", 5) #= "a" "a" "a" "a" "a"(вектор на 5ть "а")
# rep(c("a", "b"), 5) #= "a" "b" "a" "b" "a" "b" "a" "b" "a" "b" ("a", "b" - 5ть раз)
# rep(c("a", "b"), times=5) #=теж саме що і #26
# rep(c("a", "b"), each=5) #="a" "a" "a" "a" "a" "b" "b" "b" "b" "b"
# rep(c("a", "b"), times=c(5, 3)) #="a" "a" "a" "a" "a" "b" "b" "b"
# rep(c("a", "b"), length.out = 11) #= "a" "b" "a" "b" "a" "b" "a" "b" "a" "b" "a" (11ть елементів)
# 
# letters #="a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z"
# LETTERS #= "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z"
# month.abb #= "Jan" "Feb" "Mar" "Apr" "May" "Jun" "Jul" "Aug" "Sep" "Oct" "Nov" "Dec"
# month.name #= "January" "February" "March" "April" "May" "June" "July" "August" "September" "October" "November" "December"

#"3"#!Access and remove values
# x <- 1:20
# x
# x[x >=7 & x <=12] #= 7  8  9 10 11 12
# x >=7 & x <=12 #= FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
# x[c(TRUE, FALSE)] #= 1  3  5  7  9 11 13 15 17 19
# 
# c(4, 2, 4, 0)
# 
# n_legs <- c(4, 2, 4, 0)
# n_legs[1] #=first element
# n_legs <- c("dog"=4, "chicken"= 2, "cat"=4, "fish"= 0)
# n_legs
# n_legs["cat"]
# 
# ranking <-  c("1" = "Alabama", "3" = "Michigan", "4" = "Georgia")
# ranking
# ranking[3] #=  4 "Georgia" 
# ranking["3"] #= 3 "Michigan"
# 
# #getting and removing values based on position in vector
# #positive way
# letters[4] #= "d"
# letters[1] #= "a"
# letters[0] #= "character(0)"
# letters[c(1, 3, 5)] #="a" "c" "e"
# letters[10:20] #= "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t"
# #negative way
# no_a <- letters[-1] #= "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z"
# no_a[-1] #="c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z"
# letters[-c(1, 2, 3)] #="d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z"

#"4"#!Matrix (all values in a matrox is a same type(numeric, character etc.))
# x <-matrix(data = 1:100, nrow=10, ncol=10) #= matrix(data = 1:100, nrow=10, ncol=10, byrow=FALSE)
# matrix(data = 1:100, nrow=10, ncol=10, byrow=FALSE)
# matrix(data = 1:100, nrow=10, ncol=10, byrow=TRUE)
# x[2, 4] #= row 2, column 4 from x
# x[3,] #= all row 3
# x[,5] #= all column 5
# x[2:3,] #= row 2, row 3
# x[2:3, 5] #= row 2, row 3, column 5
# x[-8,] #=remove row 2
# x[,-8] #=remove row 2
# x[,c(2,3,4)] #= select columns 2, 3, 4
# x[,-c(2,3,4)] #= remove columns 2, 3, 4
# x[3, 5] <- -100 #= modify value in row 3, column 5
# x[2:3,] <- 0 #= modify value in row 2 and row 3 to 0
# x[8:9, 4] <- 0 #= modify value in row 8 and row 9 in column 4 to 0
# x[,5] <- 0 #= modify value in column 5 to 0
# x[6,8] <- "Pat" #= modify value in row 6 and column 8 to character value "Pat", all matrix become character type
# 
# matrix(0, nrow=10, ncol=10)

#"5" - FOR loop
# !for every item in sequence!
#for (variable in vector) {
  # special sauce to be repeated
#}

# for(x in 1:100){
#   print(x)
# }
# 
# names <- c("pat", "mary", "jose", "doug")
# for (n in names) {
#   print(n)
# }

# cars <- c("KIA", "Ford", "VW", "Audi", "BMW", "Renault")
# for (car in cars) {
#   print(car)
# }

# for(i in 1:length(cars)) {
#   print(cars[i])
# }

# for (car in cars) {
#   if(nchar(car) == 4) { # до першого з чотирма символами
#     break
#   }
#   print(car)
# }

# for (car in cars) {
#   if(nchar(car) == 4) { #next statement SKIPS condition
#     next
#   }
#   print(car)
# }

# #_________________________________________________
# distances <- scan("mice_simple.braycurtis.dist",
#                   what=character(),
#                   quiet = TRUE,
#                   sep = "\t")
# n_samples <- as.numeric(distances[1])
# distances <- distances[-1]
# 
# dist_matrix <- matrix(0, nrow = n_samples, ncol = n_samples)
# samples <- rep("", n_samples) #= repeat "" 10 times, n_sample=10
# 
# samples[1] <- distances[1]
# distances <- distances[-1]
# 
# #
# for(i in 2:n_samples) {
#   samples[i] <- distances[1]
#   distances <- distances[-1]
#   
#   dist_matrix[i, 1:(i-1)] <- as.numeric(distances[1:(i-1)])
#   #dist_matrix[1:(i-1), i] <- dist_matrix[i, 1:(i-1)]
#   distances <- distances[-(1:(i-1))]
# }

#"6" - Lists, Indexing [[]]- list, []-vector

# file <- scan("mice_simple.braycurtis.dist",
#                   what=character(),
#                   quiet = TRUE,
#                   sep = "\n")
# n_samples <- as.numeric(file[1])
# file <- file[-1]
# 
# file_split<- strsplit(file, "\t") 
# # file_split[[6]]
# # length(file_split[[6]]) #6
# # (n_samples + 1) - length(file_split[[6]]) #5
# # c(file_split[[6]], rep("", (n_samples+1) - length(file_split[[6]]))) #11-6
# fill_in <- function(x, length){
#   c(x, rep("", length - length(x)))
# }
# fill_in(file_split[[6]], 11)
# filled<- lapply(file_split, fill_in, length=n_samples + 1)
# #rbind(filled)
# samples_distance_matrix <- do.call(rbind, filled)
# samples <- samples_distance_matrix[,1]
# dist_matrix <- samples_distance_matrix[,-1]
# dist_matrix <- matrix(as.numeric(dist_matrix), nrow=n_samples)
# #matrix(unlist(filled), nrow=n_samples, byrow=TRUE)

#"7" - if else
# file <- scan("mice_simple.braycurtis_sq.dist",
#                   what=character(),
#                   quiet = TRUE,
#                   sep = "\n")
# n_samples <- as.numeric(file[1])
# file <- file[-1]
# 
# file_split<- strsplit(file, "\t")
# 
# fill_in <- function(x, length){
#   c(x, rep("", length - length(x)))
# }
# 
# #fill_in(file_split[[6]], 11)
# 
# filled<- lapply(file_split, fill_in, length=n_samples + 1)
# #rbind(filled)
# 
# samples_distance_matrix <- do.call(rbind, filled)
# 
# samples <- samples_distance_matrix[,1]
# 
# dist_matrix <- samples_distance_matrix[,-1]
# dist_matrix <- matrix(as.numeric(dist_matrix), nrow=n_samples)
# 
# dist_matrix <- dist_matrix + t(dist_matrix)
# 
# #ifelse() #baseR
# #if_else() #dplyr
# 
# x <- 1:20
# x %% 2 # 1 - odd(непарний), 2 - even
# ifelse(x %% 2 == 1, 'odd', 'even')
# 
# all(dist_matrix == t(dist_matrix))
# ifelse(all(dist_matrix == t(dist_matrix)), dist_matrix, dist_matrix+t(dist_matrix))
# 
# if(all(dist_matrix == t(dist_matrix))) {
#   print("data are symmetric")
# } else {
#   print("data are symmetric")
#   dist_matrix <- dist_matrix+t(dist_matrix)
# }

#"8" - changong the row and column names

#attr(dist_matrix, "dimnames") <- list(samples, samples)
# rownames(dist_matrix) <- samples
# colnames(dist_matrix) <- samples
# 
# str(mtcars) #= short about structure
# mtcars$hp #=select a variable(column) from df
# attributes(mtcars) #= all attributes and values of df
# attributes(mtcars)$names #= attribute "names" form df
# attr(mtcars, "names") #= same as "attributes(mtcars)$names"
# attr(mtcars, "names")[5] <- "d_rat" #=change name of fifth element(variable)
# attr(mtcars, "names") <- LETTERS[1:11] #=change name of variables to letters
# rownames(mtcars)

#"8" - functions
# c_to_f <- function(celsius)
#   9/5*celsius+32
# 
# c_to_f <- function(celsius, freezing)
#   9/5*celsius+freezing
# 
# c_to_f <- function(celsius, freezing=32) {
#   multiplication <- 9/5*celsius
#   f <- multiplication + freezing 
#   
#   return(f)
#   }

# read_matrix <- function(file_name) {
# 
# file <- scan(file_name,
#               what=character(),
#               quiet = TRUE,
#               sep = "\n")
# 
# n_samples <- as.numeric(file[1])
# file <- file[-1]#"8" - functions
# 
# file_split<- strsplit(file, "\t")
# 
# fill_in <- function(x, length){
#   c(x, rep("", length - length(x)))
# }
# 
# filled<- lapply(file_split, fill_in, length=n_samples + 1)
# 
# samples_distance_matrix <- do.call(rbind, filled)
# 
# samples <- samples_distance_matrix[,1]
# 
# dist_matrix <- samples_distance_matrix[,-1]
# dist_matrix <- matrix(as.numeric(dist_matrix), nrow=n_samples)
# 
# if(sum(dist_matrix[upper.tri(dist_matrix)]) == 0) {
# dist_matrix <- dist_matrix + t(dist_matrix)
# }
# 
# rownames(dist_matrix) <- samples
# colnames(dist_matrix) <- samples
# 
# return(dist_matrix)
# 
# }
# 
# dist_matrix <- read_matrix("mice_simple.braycurtis_sq.dist")

#"9" - project organize
list.files() #=files in work direction
dir.create("code")
dir.create("data")
list.files(path="data")

file.rename("read_matrix.R", "code/read_matrix.R") #=move file to directory (one of ways)
file.copy("README.md", "results/")
list.files("results/")
file.remove("results/README.md")
file.create("results/README.md")

list.files(pattern="dist") #=всі файли по назві "dist"
dist_files <- list.files(pattern="\\.dist") #=всі файли з розширенням "dist"

file.copy(from=dist_files, to="data")

file.remove(dist_files) #= remove only files, folders stay back
