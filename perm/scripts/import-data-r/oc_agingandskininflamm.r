#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_agingandskininflamm.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_agiandskiinf)="CRF Version"
label(data$rash6mo)="Have you had an itchy rash that was coming and going for at least 6 months"
label(data$rash12mo)="Have you had this itchy rash at any time in the past 12 months"
label(data$rashlocation)="Has this rash affected the folds of the elbows behind knees front of ankles under buttocks or around neck ears or eyes"
label(data$eczemadx)="Have you been diagnosed by a doctor with atopic dermatitis also known as eczema"
label(data$dryskinhx)="Do you have a history of generally dry skin"
label(data$usemoisturizer)="Have you regularly used a skin moisturizer emollient over the past year"
label(data$sunexp1hr)="Outdoors for about 1 hr at noon without sunscreen would skin become ink red irritated tender or itchy"
label(data$sunexp7days)="Over the next 7 days, would you then develop a tan or notice your skin becoming darker"
label(data$skintype)="Category that best characterizes your skin"

#Create new variables for factors
data$rash6mo.factor = factor(data$rash6mo, levels = c("0","1"))
levels(data$rash6mo.factor) = c("No","Yes")

data$rash12mo.factor = factor(data$rash12mo, levels = c("0","1"))
levels(data$rash12mo.factor) = c("No","Yes")

data$rashlocation.factor = factor(data$rashlocation, levels = c("0","1"))
levels(data$rashlocation.factor) = c("No","Yes")

data$eczemadx.factor = factor(data$eczemadx, levels = c("0","1"))
levels(data$eczemadx.factor) = c("No","Yes")

data$dryskinhx.factor = factor(data$dryskinhx, levels = c("0","1"))
levels(data$dryskinhx.factor) = c("No","Yes")

data$usemoisturizer.factor = factor(data$usemoisturizer, levels = c("1","0"))
levels(data$usemoisturizer.factor) = c("Yes","No")

data$sunexp1hr.factor = factor(data$sunexp1hr, levels = c("0","1"))
levels(data$sunexp1hr.factor) = c("No","Yes")

data$sunexp7days.factor = factor(data$sunexp7days, levels = c("1","0"))
levels(data$sunexp7days.factor) = c("Yes","No")

data$skintype.factor = factor(data$skintype, levels = c("6","4","5","2","3","1"))
levels(data$skintype.factor) = c("No skin irritation tenderness or itching in sun-exposed skin no noticeable changes in skin in sun-exposed sites in temperate climates","Minimal skin irritation tenderness or itching in sun-exposed skin then develops a deep tan or skin becomes darker in the sun-exposed sites (no skin irritation tenderness or itching at 24 hrs and a tan or darker skin at 7 days)","Occasional skin irritation tenderness or itching in sun-exposed skin then develops darker skin in sun-exposed sites in temperate climates","Easily burns then develops a light tan (painful burn at 24 hrs and a light tan at 7 days)","Mild burning skin irritation tenderness or itching in sun-exposed sites ( slightly tender itching at 24 hrs moderate tan or slightly darker at 7 days)","Always burns never develops a tan (painful burn at 24 hrs and no tan at 7 days)")

