library(datasets) # Load Data

data("mtcars") # View first 5 rows

head(mtcars, 5)

?mtcars # To get info about the variables

# Now, load ggplot package that create elegant Data Visualization using The Grammar of Graphics
library (ggplot2) # Create a scatterplot of displacement (disp) and miles per gallon (mpg)

ggplot(aes(x=disp,y=mpg,), data=mtcars)+geom_point()

# Add a title
ggplot(aes(x=disp, y=mpg,)

data=mtcars)+geom_point()+ggtitle("Displacement VS miles per gallon")
 
 
# change axis name
ggplot(aes(x=disp,y=mpg,) data=mtcars)+geom_point()+ggtitle("Displacement vs Miles per gallon") + labs(x = "Displacement", y = "Miles per Gallon")


# make vs a factor
mtcars$vs <- as.factor(mtcars$vs)


# create boxplot of the distribution for v-shaped and straight Engine
ggplot(aes(x=vs, y=mpg), data = mtcars) + geom_boxplot()

# Add colour to boxplots to help differentiate
ggplot(aes(x=vs, y=mpg, fill = vs), data = mtcars) + 
  geom_boxplot(alpha=0.3) +
  theme(legend.position="none") 

# Lets create histogram of weight 'wt'
ggplot(aes(x=wt),data=mtcars) + geom_histogram(binwidth=0.5)
