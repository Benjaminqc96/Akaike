require(HistData)
require(nortest)
base<-data.frame(Seatbelts)
mod<-lm(drivers~., data = base)
modba<-lm(drivers~1,data = base)
step(modba,scope = list(lower=modba,upper=mod),direction = "forward")
shapiro.test(rstudent(mod))$p.value
