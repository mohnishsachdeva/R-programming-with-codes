#web scraping
library(rvest)

page <- read_html("https://books.toscrape.com")

titles <- page %>%
  html_elements("h3 a") %>%
  html_attr("title")

print(titles)

########

library(rvest)

page <- read_html("https://quotes.toscrape.com")

quotes <- page %>%
  html_elements(".text") %>%
  html_text()

print(quotes)

#Program 1: Addition of Two Numbers
addition <- function(a, b)
{
  sum <- a + b
  return(sum)
}

result <- addition(15, 25)
print(result)
#primecheck
prime_check <- function(n)
{
  if(n <= 1)
  {
    return("Not Prime")
  }

  for(i in 2:(n-1))
  {
    if(n %% i == 0)
    {
      return("Not Prime")
    }
  }

  return("Prime")
}

result <- prime_check(17)
print(result)

#### average
average_fun <- function(x)
{
  avg <- mean(x)
  return(avg)
}

marks <- c(70, 80, 90, 85, 75)

result <- average_fun(marks)
print(result)


import data
data <- read.csv("C:/Users/asus/Downloads/adult_data.csv")

# Display the dataset
#View(data)

# First 6 rows
#head(data)

# Dataset structure
str(data)

# Summary statistics
summary(data)

# Column names
names(data)

# Number of rows and columns
dim(data)

# Create a data frame
students <- data.frame(
  Student_ID = c(101, 102, 103, 104, 105),
  Student_Name = c("Amit", "Neha", "Rahul", "Priya", "Karan"),
  Age = c(20, 21, 19, 22, 20),
  Marks = c(85, 92, 78, 88, 95)
)

# Display the data frame
print(students)
## add new column
data$Result <- ifelse(data$Marks >= 90, "Pass", "Fail") print(data)
##Filter Students with Marks Greater Than 80
top_students <- subset(data, Marks > 90) print(top_students)



#Program 2: Import Excel File
#Install package (only once)
install.packages("readxl")
#Load package
library(readxl)
#Read Excel file
data <- read_excel("students.xlsx")

print(data)

#Export Data to Excel
#Install package
install.packages("writexl")
#Load package
library(writexl)
#Export
write_xlsx(data,"students_output.xlsx")

#Other Export Formats
#Export as Text File
write.table(data,"students.txt",sep = "\t",row.names = FALSE)

##############NEW WORK
# Create a data frame
students <- data.frame(
  Student_ID = c(101, 102, 103, 104, 105),
  Student_Name = c("Amit", "Neha", "Rahul", "Priya", "Karan"),
  Age = c(20, 21, 19, 22, 20),
  Marks = c(85, 92, 78, 88, 95)
)

print(students)

#add new column
students$Result <- ifelse(students$Marks >= 90, "Pass", "Fail") 

print(students)

#Export Data to Excel
#Install package
#install.packages("writexl")
#Load package
library(writexl)
#Export
write_xlsx(students,"students_output.xlsx")
#install.packages("readxl")
library(readxl)
new_data <- read_excel("students_output.xlsx")
print(new_data)
