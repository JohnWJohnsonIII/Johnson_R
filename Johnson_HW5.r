#'''Homework 5'''
#1.a)
c(1:20)

#1.b)
c(20:1)

#1.c)
c(1:20,19:1)

#1.d)
tmp <- c(4, 6, 3)

#1.e)
rep(tmp, times = 10)

#1.f)
rep_len(tmp, 31)

#1.g)
c(rep(tmp[1], times = 10), rep(tmp[2], times = 20), rep(tmp[3], times = 30))

#2)
x <- seq(from = 3, to = 6, by = .1)
e <- 2.718282 #can use the function exp
c((e ^ x)*(cos(x))) == exp(x)*cos(x)

#3.a)
y <- seq(from = 3, to = 36, by = 3)
z <- seq(from = 1, to = 34, by = 3)
c((.1 ^ (y))*(.2 ^ (z)))
#3.b)
w <- c(2:25)
c(2, ((2^w)/w))

#4.a)
s <- c(10:100) #summation equation starting from 10 up to 100, so create vector 10-100
##Prof G: Not quite correct, should be 4*s^2
sum((s ^ 3) + ((4*s) ^ 2)) #should iterate through the vector and summarize the equations

#4.b)
r <- c(1:25) #similar to 4.a, except here 1-25
sum(((2 ^ r)/r) + ((3 ^ r)/(r ^ 2)))

#5.a)
paste("label", c(1:30), sep = " ")
#5.b)
paste("fn",c(1:30), sep = "")

#6)
xVec <- sample(0:999, 250, replace=T) #creating vectors of 250 numbers, randomly assigned, with values between 1 and 999
yVec <- sample(0:999, 250, replace=T)

print(xVec)
print(yVec)

#6.a)
##Prof G: Should use the length function so it will work in a general case
n = 250 
c(yVec[2:n]-xVec[1:(n-1)])
  
#6.b)
n=250
c((sin(yVec[1:(n-1)])/cos(xVec[2:n]))) #creating a vector that returns the solutions for these separate equations

#6.c)
n=250
c(xVec[1:(n-2)] + ((2)*(xVec[2:(n-1)])) - (xVec[3:n]))

#6.d)
n=250
e <- 2.718282 #e is a mathematical constant.
## Prof G: Should use the exp() function.
sum((e^-(xVec[2:+1]))/(xVec + 10))

#7.a)
yVec[600<yVec]

#7.b)
a <- which(yVec>600) #this will return index of values in yVec greater than 600

#7.c) 
## Prof G: This is not quite correct. The question asks for values, not indices, and
##         the corresponding values in x at the y indices where the y value is > 600.
b <- which(xVec>600)
intersect(a,b) #this will compare indeces vectors created in 7.b and the line above this one

#7.d)
## Prof G: This is not quite right. The abs is taken at the wrong point in the
##         equation.
c(abs((xVec[1:250] - mean(xVec)) ^ (1/2)))

#7.e)
length(yVec[(max(yVec)-200)<yVec]) 

#7.f)
v <- ifelse(xVec %% 2 == 0, "EVEN", "ODD")
length(v[v == "EVEN"])

#8
## Prof G: Not quite.
j <- seq(from = 2, to = 38, by = 2)
k <- seq(from = 3, to = 39, by = 2) #Trying to put previous items together to make this work, not sure that it does
sum(1 + (2/3) + (cumprod(j)/cumprod(k)))
