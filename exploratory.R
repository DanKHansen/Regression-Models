ds <- mtcars
str(ds)
summary(ds)
head(ds)
ds$cyl <- as.factor(ds$cyl)
ds$vs <- as.factor(ds$vs)
ds$am <- factor(ds$am,labels=c('Automatic','Manual'))
ds$gear <- as.factor(ds$gear)
ds$carb <- as.factor(ds$carb)
str(ds)

plot(ds)
pairs(ds, panel = panel.smooth)

plot(ds$am,ds$mpg,col=c('lightgreen','lightblue'),xlab='transmission', ylab='mpg')

mdl <- lm(mpg ~ .,ds)
summary(mdl)
plot(mdl)

plot(ds$wt,ds$mpg,pch=19,col=ds$am,xlab='weight', ylab='mpg')
# abline(h=mean(ds$mpg))
# abline(v=mean(ds$wt))

plot(ds$cyl,ds$mpg,pch=19,col=ds$am,xlab='cylinder', ylab='mpg')

plot(ds$hp,ds$mpg,pch=19,col=ds$am,xlab='hp', ylab='mpg')

plot(ds$gear,ds$mpg,pch=19,col=ds$am,xlab='gear', ylab='mpg')

plot(ds$carb,ds$mpg,pch=19,col=ds$am,xlab='carb', ylab='mpg')

plot(ds$disp,ds$mpg,pch=19,col=ds$am,xlab='disp', ylab='mpg')


