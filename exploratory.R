ds <- mtcars
str(ds)
head(ds)

ds$cyl <- as.factor(ds$cyl)
ds$vs <- as.factor(ds$vs) #V-engine or Straight-engine
ds$am <- factor(ds$am,labels=c('Automatic','Manual')) #Transmission-type
ds$gear <- as.factor(ds$gear) 
ds$carb <- as.factor(ds$carb)
str(ds)

summary(ds)

#plot(ds)
pairs(ds, col=ds$am, panel = panel.smooth)

plot(ds$am,ds$mpg,col=c('lightgreen','lightblue'),xlab='transmission', ylab='mpg')

fit <- lm(mpg ~ am,ds)
mdl <- lm(mpg ~ .,ds)
mdl2 <- lm(mpg ~ wt,ds)

summary(fit)
summary(mdl)
summary(mdl2)

par.orig <- par()

par(mfrow = c(2, 2), oma = c(0, 0, 2, 0))
plot(fit,col=ds$am,pch=19)
plot(mdl,col=ds$am,pch=19)
plot(mdl2,col=ds$am,pch=19)
par(par.orig)

z <- lm(mpg ~ disp,ds)
plot(ds$disp,ds$mpg,pch=19,col=ds$am,xlab='disp', ylab='mpg')
abline(z,col='blue')

plot(ds$hp,ds$mpg,pch=19,col=ds$am,xlab='hp', ylab='mpg')
plot(ds$drat,ds$mpg,pch=19,col=ds$am,xlab='drat', ylab='mpg')

z <- lm(mpg ~ wt,ds)
plot(ds$wt,ds$mpg,pch=19,col=ds$am,xlab='weight', ylab='mpg')
abline(z,col='blue')

plot(ds$qsec,ds$mpg,pch=19,col=ds$am,xlab='1/4 mile', ylab='mpg')

plot(ds$vs,ds$mpg,pch=19,col='lightgreen',xlab='vs', ylab='mpg')
plot(ds$cyl,ds$mpg,pch=19,col='lightgreen',xlab='cylinder', ylab='mpg')
plot(ds$gear,ds$mpg,pch=19,col='lightgreen',xlab='gear', ylab='mpg')
plot(ds$carb,ds$mpg,pch=19,col='lightgreen',xlab='carb', ylab='mpg')



pairs(ds,panel=panel.smooth)


