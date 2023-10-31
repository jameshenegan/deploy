#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_samples.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_sam)="CRF Version"
label(data$sam3tid)="Stool Sample Tester ID"
label(data$sam03)="Was Stool Sample collected"
label(data$sam03a)="Stool Sample reason not cone"
label(data$sam03c)="Time collected"
label(data$sam03d)="Time ampm"
label(data$sam4tid)="Stress Blood Sample Tester ID"
label(data$sam04)="Was stress blood sample collected"
label(data$sam04a)="Blood Sample reason not cone"
label(data$sam04c)="Time collected"
label(data$sam04d)="Time pm"
label(data$sam04e)="What time did you have dinner"
label(data$sam04f)="Anything to eat or drink after dinner"
label(data$sam04g)="Time you last consumed anything"
label(data$sam04h)="Time pm"
label(data$sam2tid)="Saliva Tester ID"
label(data$sam02)="Was Saliva collected"
label(data$sam02a)="Saliva reason not cone"
label(data$sam1tid)="Nail Clippings Tester ID"
label(data$sam01c)="Were nail clippings collected right"
label(data$sam01d)="Nail Clippings reason not done right"
label(data$sam01r)="Nail clippings right"
label(data$sam01a)="Were nail clippings collected left"
label(data$sam01b)="Nail Clippings reason not done left"
label(data$sam01l)="Nail clippings left"
label(data$auto_id_sam)="Unique Teleform Number"
label(data$sam04d_2)="Time pm : Pm (Checkbox Indicator)"
label(data$sam04h_2)="Time pm : Pm (Checkbox Indicator)"

#Create new variables for factors
data$sam03.factor = factor(data$sam03, levels = c("1","0"))
levels(data$sam03.factor) = c("Yes","No")

data$sam03a.factor = factor(data$sam03a, levels = c("5","3","4","9","6","7","8"))
levels(data$sam03a.factor) = c("5-Unable (Physical or Mental)","3-No Time","4-Refused","9-Not Scheduled/Not Applicable","6-Equipment problems","7-No Tester","8-Not Eligible")

data$sam03d.factor = factor(data$sam03d, levels = c("1","2"))
levels(data$sam03d.factor) = c("Am","Pm")

data$sam04.factor = factor(data$sam04, levels = c("1","0"))
levels(data$sam04.factor) = c("Yes","No")

data$sam04a.factor = factor(data$sam04a, levels = c("5","8","4","9","3","6","7"))
levels(data$sam04a.factor) = c("5-Unable (Physical or Mental)","8-Not Eligible","4-Refused","9-Not Scheduled/Not Applicable","3-No Time","6-Equipment problems","7-No Tester")

data$sam04f.factor = factor(data$sam04f, levels = c("0","1"))
levels(data$sam04f.factor) = c("No","Yes")

data$sam02.factor = factor(data$sam02, levels = c("1","0"))
levels(data$sam02.factor) = c("Yes","No")

data$sam02a.factor = factor(data$sam02a, levels = c("6","9","7","4","3","5","8"))
levels(data$sam02a.factor) = c("6-Equipment problems","9-Not Scheduled/Not Applicable","7-No Tester","4-Refused","3-No Time","5-Unable (Physical or Mental)","8-Not Eligible")

data$sam01c.factor = factor(data$sam01c, levels = c("1","0"))
levels(data$sam01c.factor) = c("Yes","No")

data$sam01d.factor = factor(data$sam01d, levels = c("5","4","9","3","6","7","8"))
levels(data$sam01d.factor) = c("5-Unable (Physical or Mental)","4-Refused","9-Not Scheduled/Not Applicable","3-No Time","6-Equipment problems","7-No Tester","8-Not Eligible")

data$sam01r.factor = factor(data$sam01r, levels = c("5","3","4","2","1"))
levels(data$sam01r.factor) = c("5","3","4","2","1")

data$sam01a.factor = factor(data$sam01a, levels = c("1","0"))
levels(data$sam01a.factor) = c("Yes","No")

data$sam01b.factor = factor(data$sam01b, levels = c("5","4","3","9","7","6","8"))
levels(data$sam01b.factor) = c("5-Unable (Physical or Mental)","4-Refused","3-No Time","9-Not Scheduled/Not Applicable","7-No Tester","6-Equipment problems","8-Not Eligible")

data$sam01l.factor = factor(data$sam01l, levels = c("5","3","4","2","1"))
levels(data$sam01l.factor) = c("5","3","4","2","1")

