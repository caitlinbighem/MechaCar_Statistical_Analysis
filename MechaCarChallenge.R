library(dplyr)
library(magrittr)
library(tidyverse)

### Deliverable 1 ###
# Import data
mecha_car_mpg <- read.csv(file='MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)

# Perform linear regression to predict MPG
mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car_mpg)
summary(mecha_lm)

### Deliverable 2 ###
# Import the data
sus_coil <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
# Create summary data frame
# total_summary <- sus_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
total_summary <- sus_coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

# Create summary data frame grouped by Manufacturing Lot
lot_summary <- sus_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI),Variance = var(PSI), SD = sd(PSI), .groups='keep')

### Deliverable 3 ###
# Determine if PSI throughout all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch
t.test(sus_coil$PSI, mu = 1500)

# Determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch
Lot1 = subset(sus_coil, Manufacturing_Lot == 'Lot1')
Lot2 = subset(sus_coil, Manufacturing_Lot == 'Lot2')
Lot3 = subset(sus_coil, Manufacturing_Lot == 'Lot3')

t.test(Lot1$PSI, mu = 1500)
t.test(Lot2$PSI, mu = 1500)
t.test(Lot3$PSI, mu = 1500)
