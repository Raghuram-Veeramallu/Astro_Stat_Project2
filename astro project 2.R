# Astro Project 2

# Get the data
data = read.csv(file.choose())

# Convert magnitude to distance 

# defining the nuiscance parameters
alpha = 0.141
beta = 3.101
MB1 = -19.05
DeltaM = -0.07

# MB
data$MB = MB1 + (DeltaM * (data$logMst > 10))

# mu
data$dist_moduli = data$mb - (data$MB - alpha * data$x1 + beta * data$c)

# distance
data$d = 10^(data$dist_moduli/5 + 1)

# Create the linear model variable (original model with no transformations)
mod = lm(d ~ zcmb, data = data)
plot(mod)

# Checking boxcox
transd = car::boxCox(lm(data$d ~ 1))
transzcmb =  car::boxCox(lm(data$zcmb ~ 1))

valued = transd$x[which.max(transd$y)]
valuezcmb = transzcmb$x[which.max(transzcmb$y)]

# transforming the datapoints
data$dtransf = data$d ^ valued
data$zcmbtrans = data$zcmb ^ valuezcmb

# transforming and fitting model
mod2 = lm(dtransf ~ zcmbtrans, data = data)
plot(mod2)
summary(mod2)

# removing some data points
data <- data[-c(48,82,721),]

# refitting the model
mod2 = lm(dtransf ~ zcmbtrans, data = data)
plot(mod2)
summary(mod2)

# Still didn't fix completely, trying weighted least squares
modweight1 = lm(d ~ zcmb, data = data, weights = 1/zcmb)
summary(modweight1)
plot(modweight1)

# trying another weight
wt = 1 / lm(abs(mod$residuals) ~ mod$fitted.values)$fitted.values^2
modweight2 = lm(d ~ zcmb, data = data, weights = wt)
summary(modweight2)
plot(modweight2)
