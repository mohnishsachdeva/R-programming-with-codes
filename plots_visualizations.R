student <- data.frame(
  Student_ID = 101:110,
  Name = c("Rahul","Priya","Amit","Neha","Rohit",
           "Anjali","Karan","Sneha","Vikas","Pooja"),
  Age = c(20,21,19,22,20,21,23,20,22,21),
  Gender = c("Male","Female","Male","Female","Male",
             "Female","Male","Female","Male","Female"),
  Marks = c(78,85,69,92,74,88,81,95,72,89),
  Attendance = c(85,92,80,95,88,90,84,98,82,91),
  Department = c("AI","CSE","AI","ECE","CSE",
                 "AI","ECE","CSE","AI","ECE")
)

student
#install.packages("ggplot2")

library(ggplot2)
#1. Histogram (Distribution of Marks)
ggplot(student, aes(x = Marks)) +
  geom_histogram(binwidth = 5,
                 fill = "skyblue",
                 color = "black") +
  labs(title = "Distribution of Marks",
       x = "Marks",
       y = "Frequency")
#2. Bar Chart (Department Count)
ggplot(student, aes(x = Department)) +
  geom_bar(fill = "orange") +
  labs(title = "Students in Each Department")
#3. Box Plot (Marks by Gender)
ggplot(student, aes(x = Gender,
                    y = Marks,
                    fill = Gender)) +
  geom_boxplot() +
  labs(title = "Marks by Gender")
#4. Scatter Plot (Age vs Marks)
ggplot(student,
       aes(x = Age,
           y = Marks)) +
  geom_point(size = 3,
             color = "blue") +
  labs(title = "Age vs Marks")
#5. Scatter Plot with Regression Line
ggplot(student,
       aes(x = Age,
           y = Marks)) +
  geom_point(color = "red", size = 3) +
  geom_smooth(method = "lm",
              se = FALSE,
              color = "blue") +
  labs(title = "Age vs Marks")

dept <- table(student$Department)
#6. Pie Chart
pie(dept,
    col = rainbow(length(dept)),
    main = "Department Distribution")
#7. Density Plot
ggplot(student,
       aes(x = Marks)) +
  geom_density(fill = "lightgreen",
               alpha = 0.5) +
  labs(title = "Density Plot of Marks")
#8. Violin Plot
ggplot(student,
       aes(x = Gender,
           y = Marks,
           fill = Gender)) +
  geom_violin() +
  labs(title = "Violin Plot")
#9. Line Chart
ggplot(student,
       aes(x = Student_ID,
           y = Marks)) +
  geom_line(color = "blue") +
  geom_point(size = 3) +
  labs(title = "Marks of Students")
#10. Faceting (Advanced EDA)
ggplot(student,
       aes(x = Marks,
           fill = Gender)) +
  geom_histogram(binwidth = 5) +
  facet_wrap(~Department)

#11. Colored Scatter Plot
ggplot(student,
       aes(x = Attendance,
           y = Marks,
           color = Department)) +
  geom_point(size = 4)

#12. Bubble Plot
ggplot(student,
       aes(x = Age,
           y = Marks,
           size = Attendance,
           color = Department)) +
  geom_point(alpha = 0.7)
#13. Count Plot by Gender
ggplot(student,
       aes(x = Gender,
           fill = Gender)) +
  geom_bar()
#14. Box Plot by Department
ggplot(student,
       aes(x = Department,
           y = Marks,
           fill = Department)) +
  geom_boxplot()