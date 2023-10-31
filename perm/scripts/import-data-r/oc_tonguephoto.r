#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_tonguephoto.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_tonpho)="CRF Version"
label(data$tph01)="Were Tongue photos taken"
label(data$tph02a)="Photo taken without food coloring Left"
label(data$tph02b)="Photo taken without food coloring Right"
label(data$tph02c)="Photo taken with food coloring Left"
label(data$tph02d)="Photo taken with food coloring Right"
label(data$tph03a)="Reason all photos not collected"
label(data$auto_id_tonpho)="Unique Teleform Number"
label(data$testerid_tonpho)="Tester ID"

#Create new variables for factors
data$tph01.factor = factor(data$tph01, levels = c("1","9","6","0","7","4"))
levels(data$tph01.factor) = c("Yes","Not scheduled","Technical","Other","No tester","Refused")

data$tph02a.factor = factor(data$tph02a, levels = c("1","0"))
levels(data$tph02a.factor) = c("Yes","No")

data$tph02b.factor = factor(data$tph02b, levels = c("1","0"))
levels(data$tph02b.factor) = c("Yes","No")

data$tph02c.factor = factor(data$tph02c, levels = c("1","0"))
levels(data$tph02c.factor) = c("Yes","No")

data$tph02d.factor = factor(data$tph02d, levels = c("1","0"))
levels(data$tph02d.factor) = c("Yes","No")

data$tph03a.factor = factor(data$tph03a, levels = c("6","0","4"))
levels(data$tph03a.factor) = c("Technical","Other","Refused")

