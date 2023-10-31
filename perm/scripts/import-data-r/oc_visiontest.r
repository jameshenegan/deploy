#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_visiontest.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_vistes)="CRF Version"
label(data$vissc1_vistes)="Do you wear glasses or contact lenses"
label(data$vissc2_vistes)="Did you bring your glasses"
label(data$vissc2a_vistes)="Type of glasses or contact lenses"
label(data$vissc2a1_vistes)="Glasses"
label(data$vissc2b_vistes)="Contact Lenses"
label(data$vissc2b1_vistes)="Contact lenses for distance bifocal or monovision"
label(data$vissc2b2_vistes)="Which eye distance"
label(data$vistid)="VisionTester ID"
label(data$visst1)="Stereopsis Line 1"
label(data$visst2)="Stereopsis Line 2"
label(data$visst3)="Stereopsis Line 3"
label(data$visst4)="Stereopsis Line 4"
label(data$visst5)="Stereopsis Line 5"
label(data$visst6)="Stereopsis Line 6"
label(data$visst7)="Stereopsis Line 7"
label(data$visst8)="Stereopsis Line 8"
label(data$visst9)="Stereopsis Line 9"
label(data$visstdon)="Stereopsis test completed"
label(data$visstrnd)="Stereopsis reason not done"
label(data$visstgls)="Did participant wear glasses"
label(data$visva11)="Glare lights off column 1 high contrast"
label(data$visva12)="Glare lights off column 2 medium contrast"
label(data$visva13)="Glare lights off column 3 low contrast"
label(data$viscsdis)="Test distance"
label(data$viscs1b0)="Do you see the bars in the first circles see line B"
label(data$viscs1b1)="Glare lights off Line B1"
label(data$viscs1b2)="Glare lights off Line B2"
label(data$viscs1b3)="Glare lights off Line B3"
label(data$viscs1b4)="Glare lights off Line B4"
label(data$viscs1b5)="Glare lights off Line B5"
label(data$viscs1b6)="Glare lights off Line B6"
label(data$viscs1b7)="Glare lights off Line B7"
label(data$viscs1b8)="Glare lights off Line B8"
label(data$viscs1c0)="Lights off Do you see the bars in the first circles see line C"
label(data$viscs1c1)="Glare lights off Line C1"
label(data$viscs1c2)="Glare lights off Line C2"
label(data$viscs1c3)="Glare lights off Line C3"
label(data$viscs1c4)="Glare lights off Line C4"
label(data$viscs1c5)="Glare lights off Line C5"
label(data$viscs1c6)="Glare lights off Line C6"
label(data$viscs1c7)="Glare lights off Line C7"
label(data$viscs1c8)="Glare lights off Line C8"
label(data$visva21)="Glare lights on column 1 high contrast"
label(data$visva22)="Glare lights on column 2 medium contrast"
label(data$visva23)="Glare lights on column 3 low contrast"
label(data$viscs2b0)="Light on Do you see the bars in the first circles see line B"
label(data$viscs2b1)="Glare lights on Line B1"
label(data$viscs2b2)="Glare lights on Line B2"
label(data$viscs2b3)="Glare lights on Line B3"
label(data$viscs2b4)="Glare lights on Line B4"
label(data$viscs2b5)="Glare lights on Line B5"
label(data$viscs2b6)="Glare lights on Line B6"
label(data$viscs2b7)="Glare lights on Line B7"
label(data$viscs2b8)="Glare lights on Line B8"
label(data$viscs2c0)="Lights on Do you see the bars in the first circles see line C"
label(data$viscs2c1)="Glare lights on Line C1"
label(data$viscs2c2)="Glare lights on Line C2"
label(data$viscs2c3)="Glare lights on Line C3"
label(data$viscs2c4)="Glare lights on Line C4"
label(data$viscs2c5)="Glare lights on Line C5"
label(data$viscs2c6)="Glare lights on Line C6"
label(data$viscs2c7)="Glare lights on Line C7"
label(data$viscs2c8)="Glare lights on Line C8"
label(data$visvadon)="Was visual acuity completed"
label(data$visvarnd)="Visual acuity reason not done"
label(data$visvagls)="Visual acuity did particpant wear glasses"
label(data$viscsdon)="Was contrast sensitivity completed"
label(data$viscsrnd)="Contrast sensitivity reason not done"
label(data$viscsgls)="Contrast sensitivity did particpant wear glasses"
label(data$visvalta)="Visual Acuity and Visual Field Alerts YN"
label(data$visvaltb)="Alerts"
label(data$visvfid)="Visual Field Tester ID"
label(data$visvfdis_vistes)="Does participant have marked discrepency of vision between eyes"
label(data$vissc3a1_vistes)="Right eye sphere Rx"
label(data$vissc3a2_vistes)="Right eye cylinder Rx"
label(data$vissc3a3_vistes)="Right eye Axis Rx"
label(data$vissc3a4_vistes)="Right eye sphere Rx final"
label(data$vissc3b1_vistes)="Left eye sphere Rx"
label(data$vissc3b2_vistes)="Left eye cylinder Rx"
label(data$vissc3b3_vistes)="Left eye Axis Rx"
label(data$vissc3b4_vistes)="Left eye sphere Rx final"
label(data$vissc3c_vistes)="Near add"
label(data$visvfdon_vistes)="Was visual field assessment completed"
label(data$visvfrnd_vistes)="Why visual field not done"
label(data$auto_id_vistes)="Unique Teleform Number"
label(data$testerid_vistes)="Tester ID"

#Create new variables for factors
data$vissc1_vistes.factor = factor(data$vissc1_vistes, levels = c("3","1","2","0"))
levels(data$vissc1_vistes.factor) = c("For both distance and near","Near only (eg reading)","Distance only (eg driving watching TV)","Never")

data$vissc2_vistes.factor = factor(data$vissc2_vistes, levels = c("1","0"))
levels(data$vissc2_vistes.factor) = c("Yes","No")

data$vissc2a_vistes.factor = factor(data$vissc2a_vistes, levels = c("1","2"))
levels(data$vissc2a_vistes.factor) = c("Glasses","Contact Lenses")

data$vissc2a1_vistes.factor = factor(data$vissc2a1_vistes, levels = c("2","4","1","3"))
levels(data$vissc2a1_vistes.factor) = c("Bifocal","Progressives","Single vision","Trifocals")

data$vissc2b_vistes.factor = factor(data$vissc2b_vistes, levels = c("1","2","8"))
levels(data$vissc2b_vistes.factor) = c("Soft","RGP (hard)","Unknown")

data$vissc2b1_vistes.factor = factor(data$vissc2b1_vistes, levels = c("1","3","2"))
levels(data$vissc2b1_vistes.factor) = c("Distance","Monovision","Bifocal")

data$vissc2b2_vistes.factor = factor(data$vissc2b2_vistes, levels = c("1","8","2"))
levels(data$vissc2b2_vistes.factor) = c("Right","Unknown","Left")

data$visstdon.factor = factor(data$visstdon, levels = c("1","0"))
levels(data$visstdon.factor) = c("Yes","No")

data$visstrnd.factor = factor(data$visstrnd, levels = c("999","555","888","777","666"))
levels(data$visstrnd.factor) = c("Technical problems","Physical problems","Refused*","Physical and cognitive","Cognitive problems")

data$visstgls.factor = factor(data$visstgls, levels = c("1","0"))
levels(data$visstgls.factor) = c("Yes","No")

data$visva11.factor = factor(data$visva11, levels = c("8","9","7","6","5","4","3","1","2","0"))
levels(data$visva11.factor) = c("20","16","25","32","40","50","63","100","80",">100")

data$visva12.factor = factor(data$visva12, levels = c("6","7","8","5","9","4","3","2","0","1"))
levels(data$visva12.factor) = c("32","25","20","40","16","50","63","80",">100","100")

data$visva13.factor = factor(data$visva13, levels = c("7","6","5","8","4","9","3","2","1","0"))
levels(data$visva13.factor) = c("25","32","40","20","50","16","63","80","100",">100")

data$viscsdis.factor = factor(data$viscsdis, levels = c("8","4"))
levels(data$viscsdis.factor) = c("8","4")

data$viscs1b0.factor = factor(data$viscs1b0, levels = c("1","0"))
levels(data$viscs1b0.factor) = c("Yes","No")

data$viscs1b1.factor = factor(data$viscs1b1, levels = c("1","9","0"))
levels(data$viscs1b1.factor) = c("Bottom","Blank","Top")

data$viscs1b2.factor = factor(data$viscs1b2, levels = c("1","9","0"))
levels(data$viscs1b2.factor) = c("Bottom","Blank","Top")

data$viscs1b3.factor = factor(data$viscs1b3, levels = c("1","9","0"))
levels(data$viscs1b3.factor) = c("Top","Blank","Bottom")

data$viscs1b4.factor = factor(data$viscs1b4, levels = c("1","9","0"))
levels(data$viscs1b4.factor) = c("Bottom","Blank","Top")

data$viscs1b5.factor = factor(data$viscs1b5, levels = c("1","9","0"))
levels(data$viscs1b5.factor) = c("Top","Blank","Bottom")

data$viscs1b6.factor = factor(data$viscs1b6, levels = c("9","1","0"))
levels(data$viscs1b6.factor) = c("Blank","Top","Bottom")

data$viscs1b7.factor = factor(data$viscs1b7, levels = c("9","1","0"))
levels(data$viscs1b7.factor) = c("Blank","Bottom","Top")

data$viscs1b8.factor = factor(data$viscs1b8, levels = c("9","1","0"))
levels(data$viscs1b8.factor) = c("Blank","Bottom","Top")

data$viscs1c0.factor = factor(data$viscs1c0, levels = c("1","0"))
levels(data$viscs1c0.factor) = c("Yes","No")

data$viscs1c1.factor = factor(data$viscs1c1, levels = c("1","9","0"))
levels(data$viscs1c1.factor) = c("Bottom","Blank","Top")

data$viscs1c2.factor = factor(data$viscs1c2, levels = c("1","9","0"))
levels(data$viscs1c2.factor) = c("Top","Blank","Bottom")

data$viscs1c3.factor = factor(data$viscs1c3, levels = c("1","9","0"))
levels(data$viscs1c3.factor) = c("Bottom","Blank","Top")

data$viscs1c4.factor = factor(data$viscs1c4, levels = c("1","9","0"))
levels(data$viscs1c4.factor) = c("Top","Blank","Bottom")

data$viscs1c5.factor = factor(data$viscs1c5, levels = c("9","1","0"))
levels(data$viscs1c5.factor) = c("Blank","Bottom","Top")

data$viscs1c6.factor = factor(data$viscs1c6, levels = c("9","1","0"))
levels(data$viscs1c6.factor) = c("Blank","Bottom","Top")

data$viscs1c7.factor = factor(data$viscs1c7, levels = c("9","0","1"))
levels(data$viscs1c7.factor) = c("Blank","Bottom","Top")

data$viscs1c8.factor = factor(data$viscs1c8, levels = c("9","0","1"))
levels(data$viscs1c8.factor) = c("Blank","Bottom","Top")

data$visva21.factor = factor(data$visva21, levels = c("8","9","7","6","5","4","3","0","2","1"))
levels(data$visva21.factor) = c("20","16","25","32","40","50","63",">100","80","100")

data$visva22.factor = factor(data$visva22, levels = c("6","7","5","8","4","9","3","2","0","1"))
levels(data$visva22.factor) = c("32","25","40","20","50","16","63","80",">100","100")

data$visva23.factor = factor(data$visva23, levels = c("6","7","5","4","3","8","9","2","1","0"))
levels(data$visva23.factor) = c("32","25","40","50","63","20","16","80","100",">100")

data$viscs2b0.factor = factor(data$viscs2b0, levels = c("1","0"))
levels(data$viscs2b0.factor) = c("Yes","No")

data$viscs2b1.factor = factor(data$viscs2b1, levels = c("1","9","0"))
levels(data$viscs2b1.factor) = c("Bottom","Blank","Top")

data$viscs2b2.factor = factor(data$viscs2b2, levels = c("1","9","0"))
levels(data$viscs2b2.factor) = c("Bottom","Blank","Top")

data$viscs2b3.factor = factor(data$viscs2b3, levels = c("1","9","0"))
levels(data$viscs2b3.factor) = c("Top","Blank","Bottom")

data$viscs2b4.factor = factor(data$viscs2b4, levels = c("1","9","0"))
levels(data$viscs2b4.factor) = c("Bottom","Blank","Top")

data$viscs2b5.factor = factor(data$viscs2b5, levels = c("9","1","0"))
levels(data$viscs2b5.factor) = c("Blank","Top","Bottom")

data$viscs2b6.factor = factor(data$viscs2b6, levels = c("9","1","0"))
levels(data$viscs2b6.factor) = c("Blank","Top","Bottom")

data$viscs2b7.factor = factor(data$viscs2b7, levels = c("9","1","0"))
levels(data$viscs2b7.factor) = c("Blank","Bottom","Top")

data$viscs2b8.factor = factor(data$viscs2b8, levels = c("9","0","1"))
levels(data$viscs2b8.factor) = c("Blank","Top","Bottom")

data$viscs2c0.factor = factor(data$viscs2c0, levels = c("1","0"))
levels(data$viscs2c0.factor) = c("Yes","No")

data$viscs2c1.factor = factor(data$viscs2c1, levels = c("1","9","0"))
levels(data$viscs2c1.factor) = c("Bottom","Blank","Top")

data$viscs2c2.factor = factor(data$viscs2c2, levels = c("1","9","0"))
levels(data$viscs2c2.factor) = c("Top","Blank","Bottom")

data$viscs2c3.factor = factor(data$viscs2c3, levels = c("1","9","0"))
levels(data$viscs2c3.factor) = c("Bottom","Blank","Top")

data$viscs2c4.factor = factor(data$viscs2c4, levels = c("9","1","0"))
levels(data$viscs2c4.factor) = c("Blank","Top","Bottom")

data$viscs2c5.factor = factor(data$viscs2c5, levels = c("9","1","0"))
levels(data$viscs2c5.factor) = c("Blank","Bottom","Top")

data$viscs2c6.factor = factor(data$viscs2c6, levels = c("9","1","0"))
levels(data$viscs2c6.factor) = c("Blank","Bottom","Top")

data$viscs2c7.factor = factor(data$viscs2c7, levels = c("9","1","0"))
levels(data$viscs2c7.factor) = c("Blank","Top","Bottom")

data$viscs2c8.factor = factor(data$viscs2c8, levels = c("9","0","1"))
levels(data$viscs2c8.factor) = c("Blank","Bottom","Top")

data$visvadon.factor = factor(data$visvadon, levels = c("1","0"))
levels(data$visvadon.factor) = c("Yes","No")

data$visvarnd.factor = factor(data$visvarnd, levels = c("999","555","888","777","666"))
levels(data$visvarnd.factor) = c("Technical problems","Physical problems","Refused*","Physical and cognitive","Cognitive problems")

data$visvagls.factor = factor(data$visvagls, levels = c("1","0"))
levels(data$visvagls.factor) = c("Yes","No")

data$viscsdon.factor = factor(data$viscsdon, levels = c("1","0"))
levels(data$viscsdon.factor) = c("Yes","No")

data$viscsrnd.factor = factor(data$viscsrnd, levels = c("999","555","888","777","666"))
levels(data$viscsrnd.factor) = c("Technical problems","Physical problems","Refused*","Physical and cognitive","Cognitive problems")

data$viscsgls.factor = factor(data$viscsgls, levels = c("1","0"))
levels(data$viscsgls.factor) = c("Yes","No")

data$visvalta.factor = factor(data$visvalta, levels = c("0","1"))
levels(data$visvalta.factor) = c("No - Go to STANDARD ALERT","Yes - Go to B")

data$visvaltb.factor = factor(data$visvaltb, levels = c("3","2","1"))
levels(data$visvaltb.factor) = c("More than a few weeks ago - STANDARD ALERT","Within the past few weeks - URGENT ALERT","Within the past few days - EMERGENCY ALERT")

data$visvfdis_vistes.factor = factor(data$visvfdis_vistes, levels = c("0","1"))
levels(data$visvfdis_vistes.factor) = c("No","Yes")

data$visvfdon_vistes.factor = factor(data$visvfdon_vistes, levels = c("1","0"))
levels(data$visvfdon_vistes.factor) = c("Yes","No")

data$visvfrnd_vistes.factor = factor(data$visvfrnd_vistes, levels = c("999","555","888","777","666"))
levels(data$visvfrnd_vistes.factor) = c("Technical problems","Physical problems (*includes if participant has marked discrepancy of vision between eyes)","Refused","Cognitive problems","Physical and cognitive")

data$visst1.factor = factor(data$visst1, levels = c("_1","_0","_00","_000"))
levels(data$visst1.factor) = c("Bottom","Left","Right","Top")

data$visst2.factor = factor(data$visst2, levels = c("_1","_0","_00","_000"))
levels(data$visst2.factor) = c("Left","Right","Top","Bottom")

data$visst3.factor = factor(data$visst3, levels = c("_1","_0","_00","_000"))
levels(data$visst3.factor) = c("Bottom","Left","Right","Top")

data$visst4.factor = factor(data$visst4, levels = c("_1","_0","_00","_000"))
levels(data$visst4.factor) = c("Top","Left","Right","Bottom")

data$visst5.factor = factor(data$visst5, levels = c("_1","_0","_000","_00"))
levels(data$visst5.factor) = c("Top","Left","Bottom","Right")

data$visst6.factor = factor(data$visst6, levels = c("_1","_0","_000","_00"))
levels(data$visst6.factor) = c("Left","Right","Bottom","Top")

data$visst7.factor = factor(data$visst7, levels = c("_1","_0","_00","_000"))
levels(data$visst7.factor) = c("Right","Left","Top","Bottom")

data$visst8.factor = factor(data$visst8, levels = c("_1","_0","_00","_000"))
levels(data$visst8.factor) = c("Left","Right","Top","Bottom")

data$visst9.factor = factor(data$visst9, levels = c("_1","_0","_00","_000"))
levels(data$visst9.factor) = c("Right","Left","Top","Bottom")

