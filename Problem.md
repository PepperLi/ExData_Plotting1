Problem 1:How to read this .txt file?
          We usually faced with .xsl or .csv files, but this time, the numbers and characters are seperated by semicolon.
          So, if I use read.table, the name of the data will be "V1" and column one will be the "actual name" of the file. 
          I should first tackle this problem and transform the file into a .csv file.
          
          Someone in the course forum recommended as follow:
          ## load library
          library(sqldf)

          ## make a path and file string
          fn<-"C:/yourpath/yourfile.txt"

          ## read file and select rows based on string "1/1/2007" and store in dataframe DF
          DF4 <- read.csv.sql(fn, sep=";",sql = 'select * from file where Date = "1/1/2007"')

Problem 2:How to speed up the file input process?
          Well, the file is too big and we are going to use only a fraction of the file, so, how to make subset?
          
