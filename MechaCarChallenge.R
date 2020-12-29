# Import the library
library(dplyr)
library(tidyverse)
#Import and read the data
mecha <- read.csv(file="MechaCar_mpg.csv",check.names= F, stringsAsFactors = F)

# Perform linear regression
 lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + 
     AWD, data=mecha)

# Get the summary of the linear regression
summary(lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + 
             AWD, data=mecha))
# Plot the Graph

# Remove spoiler angle 
summary(lm(mpg~ vehicle_length + vehicle_weight  + ground_clearance + 
             AWD, data=mecha))
#Remove AWD
summary(lm(mpg~ vehicle_length + vehicle_weight + ground_clearance,
             data=mecha))
#Remove vehicle_weight
summary(lm(mpg~ vehicle_length  + ground_clearance,
           data=mecha))

# Check multicollinearity
mecha_matrix <- as.matrix(mecha[,c("vehicle_length", "vehicle_weight","spoiler_angle",
                                   "ground_clearance", "AWD")]) 
cor(mecha_matrix)

## Deliverable 2
#Import and read suspension data
suspension <- read.csv(file="Suspension_Coil.csv",check.names= F, stringsAsFactors = F)
# Get the total summary of PSI
total_summary <- suspension %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance =var(PSI), SD=sd(PSI))

#Get the summary grouped by lots
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance =var(PSI), SD=sd(PSI), .groups ='keep') 

# Deliverable 3
# t-test
?t.test()
t.test(lot_summary$Mean, mu=1500) 

#subsets
lot1_summary <- subset(suspension,Manufacturing_Lot=='Lot1')
t.test(lot1_summary$PSI, mu=1500)

lot2_summary <- subset(suspension, Manufacturing_Lot == 'Lot2')
t.test(lot2_summary$PSI, mu=1500)

lot3_summary <- subset(suspension, Manufacturing_Lot == 'Lot3')
t.test(lot3_summary$PSI, mu=1500)
mtcars
mecha
t.test(mecha$mpg, mtcars$mpg)
