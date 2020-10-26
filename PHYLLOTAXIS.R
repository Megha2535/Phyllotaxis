rm(list=ls())
# Set plot images to a nice size
options(repr.plot.width = 4, repr.plot.height = 4)

# Load the ggplot2 package
# .... YOUR CODE FOR TASK 1 ....
library(ggplot2)
# Create circle data to plot
t <- seq(0, 2*pi, length.out = 50)
x <- sin(t)
y <- cos(t)
df <- data.frame(t, x, y)

# Make a scatter plot of points in a circle
p <- ggplot(df, aes(x, y))
p + geom_point()
# Define the number of points
# .... YOUR CODE FOR TASK 3 ....
points<-500
# Define the Golden Angle
# .... YOUR CODE FOR TASK 3 ....
angle<-pi*(3-sqrt(5))
t <- (1:points) * angle
x <- sin(t)
y <-cos(t)
df <- data.frame(t, x, y)

# Make a scatter plot of points in a spiral
p <- ggplot(df, aes(x*t, y*t))
p + geom_point()
df <- data.frame(t, x, y)

# Make a scatter plot of points in a spiral and remove some plot components
p <- ggplot(df, aes(x*t, y*t))
p + geom_point() + theme(panel.background=element_rect(fill="white"),panel.grid=element_blank(),axis.ticks=element_blank(),axis.title=element_blank(),axis.text=element_blank())
p <- ggplot(df, aes(x*t, y*t))
p + geom_point(size=8,alpha=0.5,color="darkgreen")+
  theme(panel.background=element_rect(fill="white"),panel.grid=element_blank(),axis.ticks=element_blank(),axis.title=element_blank(),axis.text=element_blank())
# Copy the code from Task 5 and modify the 
# color, size, and shape of the points
p <- ggplot(df, aes(x*t, y*t))
p + geom_point(aes(size=t),alpha=0.5,color="darkgreen",shape=8)+
  theme(legend.title=element_blank(),legend.position="none",panel.background=element_rect(fill="white"),panel.grid=element_blank(),axis.ticks=element_blank(),axis.title=element_blank(),axis.text=element_blank())
# Copy the code from Task 6 and modify the color and
# shape of the points, and the background color
p <- ggplot(df, aes(x*t, y*t))
p + geom_point(aes(size=t),alpha=0.5,color="yellow",shape=17)+
  theme(legend.title=element_blank(),legend.position="none",panel.background=element_rect(fill="darkmagenta"),panel.grid=element_blank(),axis.ticks=element_blank(),axis.title=element_blank(),axis.text=element_blank())
# Change the value of the angle
angle <- 2.0
points <- 1000

t <- (1:points)*angle
x <- sin(t)
y <- cos(t)
df <- data.frame(t, x, y)
p <- ggplot(df, aes(x*t, y*t))
p + geom_point(aes(size=t),alpha=0.5,color="yellow",shape=17)+
  theme(legend.title=element_blank(),legend.position="none",panel.background=element_rect(fill="darkmagenta"),panel.grid=element_blank(),axis.ticks=element_blank(),axis.title=element_blank(),axis.text=element_blank())

# Change the values of angle and points
angle <- 13*pi/180
points <- 2000

t <- (1:points)*angle
x <- sin(t)
y <- cos(t)
df <- data.frame(t, x, y)

# Adjust the plot parameters to create the magenta flower
p <- ggplot(df, aes(x*t, y*t))
p + geom_point(size = 80, alpha = 0.1, shape = 1, color = "magenta4")+
  theme(legend.position="none",
        panel.background = element_rect(fill = "white"),
        panel.grid=element_blank(),
        axis.ticks=element_blank(),
        axis.title=element_blank(),
        axis.text=element_blank())
