
airquality<-datasets::airquality

#Top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)

#columns
airquality[50:60,c(1,2)]

df<-airquality[,-6]

#Descriptive statistics
summary(airquality[,c(4,5)]) #generate for columns 2,3

airquality$Wind
airquality$Ozone
airquality$Temp
airquality$Solar.R

#summary
summary(airquality)
summary(airquality$Wind)

##################
#visualization
#sactter plot
plot(airquality$Wind,type="l")

plot(airquality$Temp,airquality$Ozone,type="p")

plot(airquality)

#points and lines 
plot(airquality$Wind,type="l")#p:point l:lines b:both
plot(airquality$Wind, xlab = 'Ozone concentration',
     ylab = 'No of instances', 
     main = 'ozone lebels in NY city',
     col = 'blue', type = 'l')

#Horizontal bar plot
barplot(airquality$Ozone, main = 'Ozone Concentration in air',
        ylab = 'ozone lavels', col = 'blue', horiz = T, axes = T)


#Histogram bar plot
hist(airquality$Temp)
hist(airquality$Temp,
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad', col = 'blue')

#Single box plot
boxplot(airquality$Wind, main='Boxplot')
boxplot.stats(airquality$Wind)$out


boxplot.stats


#Multiple Box plots

boxplot(airquality[,1:4],main='multiple')

par(mfrow=c(3,3),mar=c(2,5,2,1), las=0, bty="0")

plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type = "l")
plot(airquality$Ozone, type = "l")
plot(airquality$Ozone, type = "l")
barplot(airquality$Ozone, main = 'Ozone Concentration in air',
        xlab = 'ozone levels', col = 'green', horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main ='multiple box plots')










