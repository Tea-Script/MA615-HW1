#Sys.setenv(RSTUDIO_PANDOC="/usr/lib/rstudio/bin/pandoc")

#Question 1
1:20 #a
20:1 #b
c(1:20,19:1) #c
tmp <- c(4,6,3) #d
rep(tmp, times=10) #e
rep(tmp, times=11, len= 31) #f
g <- c(rep(tmp[1], each=10), rep(tmp[2], each=20), rep(tmp[3], each=30))
length(g) #g

#Question 2
rng <- seq(from=3, to=6, by=.1)
res <- exp(rng) * cos(rng)
res

#Question 3
#a
exp1 <- seq(3,36,by=3)
exp2 <- seq(1,34,by=3)
res <- .1^exp1 * .2^exp2
res
#b
base <- rep(2, times=25)
const <- 1:25
res <- base^const / const
res

#Question 4
#a
i <- 10:100
sum(i^3 + 4*i^2)
#b
i <- 1:25
sum(2^i/i + 3^i/i^2)

#Question 5
#a
paste(rep("label", times=30), 1:30)
#b
paste(rep("fn", times=30), 1:30, sep="")

#Question 6
set.seed(50)
xVec <- sample(0:999, 250, replace=T)
yVec <- sample(0:999, 250, replace=T)

#a
n <- length(xVec)
zVec <- yVec[2:n] - xVec[1:(n-1)]
zVec
#b
zVec <- sin(yVec[1:(n-1)])/cos(xVec[2:n])
zVec
#c
zVec <- xVec[1:(n-2)] + 2*xVec[2:(n-1)] - xVec[3:n]
# zVec
#d
i <- 1:(n-1)
res <- sum(exp(-1*xVec[i+1])/(xVec[i]+10))
res

#Question 7
indices <- which(yVec > 600)
values <- yVec[indices]
#a
values
#b
indices
#c
xvalues <- xVec[indices]
xvalues
#d
sqrt(abs(xVec - mean(xVec)))
#e
ymax <- max(yVec)
yVec[which(abs(yVec - ymax) <= 200)]
#f
length(which(xVec %% 2 == 0 ))
#g
ord <- order(yVec, decreasing = FALSE)
sorted_xvec <- xVec[ord]
sorted_xvec
#h
sq = seq(1,length(yVec), by=3)
yVec[sq]


#Problem 8
tops <- c(1, seq(2,38, by=2))
bottoms <- seq(1,39, by=2)
fracs <- tops/bottoms
prodvector <- cumprod(fracs)
sum(prodvector)
