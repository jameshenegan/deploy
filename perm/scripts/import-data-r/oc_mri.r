#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_mri.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_mri)="CRF Version"
label(data$mri01a)="Eligible for Thigh MRI"
label(data$mri01b)="Thigh MRI reason not eligible"
label(data$mri01c)="Was thigh MRI completed"
label(data$mri01d1)="Thigh SURVEY"
label(data$mri01d2)="Thigh WIP SURVEY"
label(data$mri01d3)="Thigh Small Fov Flex M survey"
label(data$mri01d4)="T1 3D 80 SLICE"
label(data$mri01d5)="COR SCOUT"
label(data$mri01d6)="B0map2p3ms"
label(data$mri01d7)="WS T1 3D 80 SLICE"
label(data$mri01d8)="FS T1 3D 30 SLICE"
label(data$mri01d9)="SV PRESS FLEX M"
label(data$mri01d10)="SV NOH2OSUPP"
label(data$mri02a)="Eligible for 31P Dynamic Exercise"
label(data$mri02b)="Dynamic Exercise MRI reason not eligible"
label(data$mri02c)="Was Dynamic Exercise MRI completed"
label(data$mri02d1)="Dynamic Exercise SURVEY"
label(data$mri02d2)="Dynamic Exercise SURVEY L Leg"
label(data$mri02d3)="Dynamic Exercise T1 3D 80 Slice"
label(data$mri02d4)="Dynamic Exercise B0map 2p3ms"
label(data$mri02d5)="Dynamic Exercise T1W_TSE"
label(data$mri02d6)="Dynamic Exercise 31P LONG TR"
label(data$mri02d7)="Dynamic Exercise 31P_DYN_EXERCISE"
label(data$mri02d8)="Dynamic Exercise T1W_TSE 2"
label(data$mri02d9)="Dynamic Exercise 31P Long TR 2"
label(data$mri03a)="Eligible for Brain MRI"
label(data$mri03b)="Brain MRI reason not eligible"
label(data$mri03c)="Was Brain MRI completed"
label(data$mri03d1)="Smart Brain"
label(data$mri03d3)="MPrageADNIsag"
label(data$mri03d4)="REST"
label(data$mri03d7)="DE ADNIaxial"
label(data$mri03d8)="FLAIR"
label(data$mri01d_2)="Thigh MRI reason not done"
label(data$mri02d_2)="Dynamic Exercise MRI reason not done"
label(data$mri03d_2)="BrainMRI reason not done"
label(data$mri03d2)="Ref HC8"
label(data$mri03d5)="Decision Making"
label(data$mri03d6)="Decision Making 2"
label(data$mri03d9)="DT1HR2.2"
label(data$mri03d10)="DT1HR2.2 2"
label(data$mri01d)="Thigh MRI reason not done"
label(data$mri02d)="Dynamic Exercise MRI reason not done"
label(data$mri03d)="BrainMRI reason not done"
label(data$auto_id_mri)="Unique Teleform Number"
label(data$testerid_mri)="Tester ID"

#Create new variables for factors
data$mri01a.factor = factor(data$mri01a, levels = c("1","0"))
levels(data$mri01a.factor) = c("Yes","No")

data$mri01b.factor = factor(data$mri01b, levels = c("3","4","2","1"))
levels(data$mri01b.factor) = c("Metal in body"," Implanted Medical device","Claustrophobia","Physical")

data$mri01c.factor = factor(data$mri01c, levels = c("1","3","2"))
levels(data$mri01c.factor) = c("Complete","Not Done","Incomplete")

data$mri01d1.factor = factor(data$mri01d1, levels = c("4","5","3","6"))
levels(data$mri01d1.factor) = c("4 - Refused","5 - Unable (Physical/Mental)","3 - No Time","6 - Equipment problem")

data$mri01d2.factor = factor(data$mri01d2, levels = c("4","5","6","3"))
levels(data$mri01d2.factor) = c("4 - Refused","5 - Unable (Physical/Mental)","6 - Equipment problem","3 - No Time")

data$mri01d3.factor = factor(data$mri01d3, levels = c("4","6","5","3"))
levels(data$mri01d3.factor) = c("4 - Refused","6 - Equipment problem","5 - Unable (Physical/Mental)","3 - No Time")

data$mri01d4.factor = factor(data$mri01d4, levels = c("4","5","3","6"))
levels(data$mri01d4.factor) = c("4 - Refused","5 - Unable (Physical/Mental)","3 - No Time","6 - Equipment problem")

data$mri01d5.factor = factor(data$mri01d5, levels = c("5","4","6","3"))
levels(data$mri01d5.factor) = c("5 - Unable (Physical/Mental)","4 - Refused","6 - Equipment problem","3 - No Time")

data$mri01d6.factor = factor(data$mri01d6, levels = c("5","4","6","3"))
levels(data$mri01d6.factor) = c("5 - Unable (Physical/Mental)","4 - Refused","6 - Equipment problem","3 - No Time")

data$mri01d7.factor = factor(data$mri01d7, levels = c("5","4","3","6"))
levels(data$mri01d7.factor) = c("5 - Unable (Physical/Mental)","4 - Refused","3 - No Time","6 - Equipment problem")

data$mri01d8.factor = factor(data$mri01d8, levels = c("5","6","4","3"))
levels(data$mri01d8.factor) = c("5 - Unable (Physical/Mental)","6 - Equipment problem","4 - Refused","3 - No Time")

data$mri01d9.factor = factor(data$mri01d9, levels = c("6","5","4","3"))
levels(data$mri01d9.factor) = c("6 - Equipment problem","5 - Unable (Physical/Mental)","4 - Refused","3 - No Time")

data$mri01d10.factor = factor(data$mri01d10, levels = c("6","5","4","3"))
levels(data$mri01d10.factor) = c("6 - Equipment problem","5 - Unable (Physical/Mental)","4 - Refused","3 - No Time")

data$mri02a.factor = factor(data$mri02a, levels = c("1","0"))
levels(data$mri02a.factor) = c("Yes","No")

data$mri02b.factor = factor(data$mri02b, levels = c("3","4","2","1"))
levels(data$mri02b.factor) = c("Metal in body"," Implanted Medical device","Claustrophobia","Physical")

data$mri02c.factor = factor(data$mri02c, levels = c("1","3","2"))
levels(data$mri02c.factor) = c("Complete","Not Done","Incomplete")

data$mri02d1.factor = factor(data$mri02d1, levels = c("5","3","4","6"))
levels(data$mri02d1.factor) = c("5 - Unable (Physical/Mental)","3 - No Time","4 - Refused","6 - Equipment problem")

data$mri02d2.factor = factor(data$mri02d2, levels = c("5","3","4","6"))
levels(data$mri02d2.factor) = c("5 - Unable (Physical/Mental)","3 - No Time","4 - Refused","6 - Equipment problem")

data$mri02d3.factor = factor(data$mri02d3, levels = c("5","3","4","6"))
levels(data$mri02d3.factor) = c("5 - Unable (Physical/Mental)","3 - No Time","4 - Refused","6 - Equipment problem")

data$mri02d4.factor = factor(data$mri02d4, levels = c("5","3","4","6"))
levels(data$mri02d4.factor) = c("5 - Unable (Physical/Mental)","3 - No Time","4 - Refused","6 - Equipment problem")

data$mri02d5.factor = factor(data$mri02d5, levels = c("5","3","4","6"))
levels(data$mri02d5.factor) = c("5 - Unable (Physical/Mental)","3 - No Time","4 - Refused","6 - Equipment problem")

data$mri02d6.factor = factor(data$mri02d6, levels = c("6","5","3","4"))
levels(data$mri02d6.factor) = c("6 - Equipment problem","5 - Unable (Physical/Mental)","3 - No Time","4 - Refused")

data$mri02d7.factor = factor(data$mri02d7, levels = c("6","5","3","4"))
levels(data$mri02d7.factor) = c("6 - Equipment problem","5 - Unable (Physical/Mental)","3 - No Time","4 - Refused")

data$mri02d8.factor = factor(data$mri02d8, levels = c("6","5","3","4"))
levels(data$mri02d8.factor) = c("6 - Equipment problem","5 - Unable (Physical/Mental)","3 - No Time","4 - Refused")

data$mri02d9.factor = factor(data$mri02d9, levels = c("6","5","3","4"))
levels(data$mri02d9.factor) = c("6 - Equipment problem","5 - Unable (Physical/Mental)","3 - No Time","4 - Refused")

data$mri03a.factor = factor(data$mri03a, levels = c("1","0"))
levels(data$mri03a.factor) = c("Yes","No")

data$mri03b.factor = factor(data$mri03b, levels = c("2","4","3","1"))
levels(data$mri03b.factor) = c("Claustrophobia"," Implanted Medical device","Metal in body","Physical")

data$mri03c.factor = factor(data$mri03c, levels = c("1","3","2"))
levels(data$mri03c.factor) = c("Complete","Not Done","Incomplete")

data$mri03d1.factor = factor(data$mri03d1, levels = c("5","3","4","6"))
levels(data$mri03d1.factor) = c("5 - Unable (Physical/Mental)","3 - No Time","4 - Refused","6 - Equipment problem")

data$mri03d3.factor = factor(data$mri03d3, levels = c("5","3","4","6"))
levels(data$mri03d3.factor) = c("5 - Unable (Physical/Mental)","3 - No Time","4 - Refused","6 - Equipment problem")

data$mri03d4.factor = factor(data$mri03d4, levels = c("5","6","4","3"))
levels(data$mri03d4.factor) = c("5 - Unable (Physical/Mental)","6 - Equipment problem","4 - Refused","3 - No Time")

data$mri03d7.factor = factor(data$mri03d7, levels = c("5","4","6","3"))
levels(data$mri03d7.factor) = c("5 - Unable (Physical/Mental)","4 - Refused","6 - Equipment problem","3 - No Time")

data$mri03d8.factor = factor(data$mri03d8, levels = c("5","4","6","3"))
levels(data$mri03d8.factor) = c("5 - Unable (Physical/Mental)","4 - Refused","6 - Equipment problem","3 - No Time")

data$mri01d_2.factor = factor(data$mri01d_2, levels = c("9","6","4","7","3","8"))
levels(data$mri01d_2.factor) = c("Not Scheduled","Equipment Problems","Refused","No Tester","No Time","Unable COVID-19 Mask")

data$mri02d_2.factor = factor(data$mri02d_2, levels = c("9","6","4","7","3","8"))
levels(data$mri02d_2.factor) = c("Not Scheduled","Equipment Problems","Refused","No Tester","No Time","Unable COVID-19 Mask")

data$mri03d_2.factor = factor(data$mri03d_2, levels = c("9","6","4","7","3","8"))
levels(data$mri03d_2.factor) = c("Not Scheduled","Equipment Problems","Refused","No Tester","No Time","Unable COVID-19 Mask")

data$mri03d2.factor = factor(data$mri03d2, levels = c("5","3","4","6"))
levels(data$mri03d2.factor) = c("5 - Unable (Physical/Mental)","3 - No Time","4 - Refused","6 - Equipment problem")

data$mri03d5.factor = factor(data$mri03d5, levels = c("6","5","4","3"))
levels(data$mri03d5.factor) = c("6 - Equipment problem","5 - Unable (Physical/Mental)","4 - Refused","3 - No Time")

data$mri03d6.factor = factor(data$mri03d6, levels = c("6","5","4","3"))
levels(data$mri03d6.factor) = c("6 - Equipment problem","5 - Unable (Physical/Mental)","4 - Refused","3 - No Time")

data$mri03d9.factor = factor(data$mri03d9, levels = c("6","5","4","3"))
levels(data$mri03d9.factor) = c("6 - Equipment problem","5 - Unable (Physical/Mental)","4 - Refused","3 - No Time")

data$mri03d10.factor = factor(data$mri03d10, levels = c("6","5","4","3"))
levels(data$mri03d10.factor) = c("6 - Equipment problem","5 - Unable (Physical/Mental)","4 - Refused","3 - No Time")

data$mri01d.factor = factor(data$mri01d, levels = c("4","9","3","6","7"))
levels(data$mri01d.factor) = c("Refused","Not Scheduled","No Time","Equipment Problems","No Tester")

data$mri02d.factor = factor(data$mri02d, levels = c("4","9","6","3","7"))
levels(data$mri02d.factor) = c("Refused","Not Scheduled","Equipment Problems","No Time","No Tester")

data$mri03d.factor = factor(data$mri03d, levels = c("4","9","3","6","7"))
levels(data$mri03d.factor) = c("Refused","Not Scheduled","No Time","Equipment Problems","No Tester")

