set.seed(1)
OBV <- 1:10
Dist25 <- NULL
Dist36 <- NULL
count = 100
while(count > 0){Dist25 <- c(Dist25,mean(sample(OBV, 25,replace = TRUE) ) ); count <- count - 1}
Dist25_Density <- data.frame(Theta = density(Dist25, kernel = "gaussian")$x, Density = density(Dist25, kernel = "gaussian")$y)
CL25 <- max(Dist25_Density$Theta[Dist25_Density$Theta < 5 & Dist25_Density$Density < .05])
print(CL25)  ## The smallest parameter that could make judgement
(CL25 - mean(Dist25))/sd(Dist25) ## Distance to the average

count = 100
while(count > 0){Dist36 <- c(Dist36,mean(sample(OBV, 36,replace = TRUE) ) ); count <- count - 1}
Dist36_Density <- data.frame(Theta = density(Dist36, kernel = "gaussian")$x, Density = density(Dist36, kernel = "gaussian")$y)
CL36 <- max(Dist36_Density$Theta[Dist36_Density$Theta < 5 & Dist36_Density$Density < .05])
print(CL36)  ## The smallest parameter that could make judgement
(CL36 - mean(Dist36))/sd(Dist36) ## Distance to the average
