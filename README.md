# testrepo

## Editing the File
Its a markdown repository

## Objective for Exercise
We will create different data visualizations using the `ggplot`package using the inbuilt dataset in `"R"` called `mtcars`
This is set up on lab.cognitiveclass.ai (formerly Big Data University) by IBM Developer Skills Network

1.	Click on the + symbol on the top left and choose `'R Script'` from the menu to open a new R edit window in RStudio
![image](https://user-images.githubusercontent.com/74695986/184834898-0788287d-28c1-48a5-8611-e86f954bb545.png)
OR 
Hold Ctrl + Sht + Alt + N 
2.	Read and view the first 5 rows of the Data using the following:
```library(datasets)```

## Load Data
```data(mtcars)```

# View first 5 rows
```head(mtcars, 5)```

3.	Type this ?mtcars to get information about the variables. This will print the information at the bottom right panel, on the Help tab

4.	Copy and paste the following code to load the ggplot package and create a scatterplot of disp and mpg.
## Load ggplot package
```library(ggplot2)```
![2022-08-14 08_15_21-Skills Network Labs](https://user-images.githubusercontent.com/74695986/184840927-0813e235-8180-4200-a3a9-3c8d8e3db2c2.png)

## create a scatterplot of displacement (disp) and miles per gallon (mpg)
```ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()```
![2022-08-15 06_24_45-Skills Network Labs](https://user-images.githubusercontent.com/74695986/184841638-95ec4700-9aa8-4852-bf9c-31456e6b7f9a.png)

5.	Use the following code to add a title.

## Add a title
``ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon")``
![2022-08-15 06_24_45-Skills Network Labs](https://user-images.githubusercontent.com/74695986/184842930-72c5c32c-4a13-4d9d-ad7e-9fae8b2ea676.png)

6.	Use the following code to change the name of the x-axis and y-axis
![2022-08-15 06_26_52-](https://user-images.githubusercontent.com/74695986/184842975-2960dc4b-3d63-4ce6-a225-016df61826d2.png)

## change axis name
``ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon") + labs(x = "Displacement", y = "Miles per Gallon")``

7.	Use the following to create a boxplot of the the distribution of mpg for the individual Engine types `vs` Engine `(0 = V-shaped, 1 = straight)`

To do this you have to make vs a string or factor.

## make vs a factor
``mtcars$vs <- as.factor(mtcars$vs)``

![2022-08-15 06_26_52-](https://user-images.githubusercontent.com/74695986/184842238-bb9db197-920e-4afc-b51b-d660be941e4c.png)

# create boxplot of the distribution for v-shaped and straight Engine
``ggplot(aes(x=vs, y=mpg), data = mtcars) + geom_boxplot()``

8.	Add color to the boxplots to help differentiate:
```ggplot(aes(x=vs, y=mpg, fill = vs), data = mtcars) + 
  geom_boxplot(alpha=0.3) +
  theme(legend.position="none")```

9.	Finally, let us create the histogram of weight `wt`.

```ggplot(aes(x=wt),data=mtcars) + geom_histogram(binwidth=0.5)```
This concludes this lab, I hope that you had fun!

## Author(s)
*_ Ekene Emmanuel Ajemba_*
