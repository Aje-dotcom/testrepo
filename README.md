# testrepo
## Editing the File
Its a markdown repository

## Objective for Exercise
We will create different data visualizations using the <span style="color:green;font-weight:700;font-size:20px"> ggplot
</span> package using the inbuilt dataset in "R" called <span style="color🔴;font-weight:700;font-size:20px">mtcars
</span>

1.	Click on the + symbol on the top left and choose <span style="color:red;font-weight:700;font-size:20px"> 'R Script'
</span> from the menu to open a new R edit window in <span style="color:green;font-weight:700;font-size:20px">
    RStudio</span>
![image](https://user-images.githubusercontent.com/74695986/184834898-0788287d-28c1-48a5-8611-e86f954bb545.png)

2.	Read and view the first 5 rows of the Data using the following:
library(datasets)

# Load Data
data(mtcars)

# View first 5 rows
head(mtcars, 5)

3.	Type this ?mtcars to get information about the variables. This will print the information at the bottom right panel, on the Help tab

4.	Copy and paste the following code to load the ggplot package and create a scatterplot of disp and mpg.
#load ggplot package
library(ggplot2)

# create a scatterplot of displacement (disp) and miles per gallon (mpg)
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()

5.	Use the following code to add a title.
# Add a title
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon")

6.	Use the following code to change the name of the x-axis and y-axis
"# change axis name"
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon") + labs(x = "Displacement", y = "Miles per Gallon")

7.	Use the following to create a boxplot of the the distribution of mpg for the individual Engine types vs Engine (0 = V-shaped, 1 = straight)
To do this you have to make vs a string or factor.

#make vs a factor
mtcars$vs <- as.factor(mtcars$vs)

# create boxplot of the distribution for v-shaped and straight Engine
ggplot(aes(x=vs, y=mpg), data = mtcars) + geom_boxplot()

8.	Add color to the boxplots to help differentiate:
ggplot(aes(x=vs, y=mpg, fill = vs), data = mtcars) + 
  geom_boxplot(alpha=0.3) +
  theme(legend.position="none")

9.	Finally, let us create the histogram of weight wt.
ggplot(aes(x=wt),data=mtcars) + geom_histogram(binwidth=0.5)
This concludes this lab, we hope that you had fun!

## Author(s)
# Ekene Emmanuel Ajemba
