#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_biodexkneestrength.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_bioknestr)="CRF Version"
label(data$bks001)="Does BP during PE exceed 220/115"
label(data$bks002)="From DXA testing is bone mineral density T score of either hip more than four standard deviations below the population meal or less than 0.5g/cm-squared"
label(data$bks003)="Ever been told you had aneurysm in the brain"
label(data$bks004)="Told you had a cerebral hemmorage in the last 6 months"
label(data$bks004a)="Past year had low back pain that limited activity for 10 days"
label(data$bks005)="Have had knee surgery"
label(data$bks005a)="Surgery on right left or both"
label(data$bks006)="Had an injury that made one leg weaker than the other"
label(data$bks006a)="Which leg is stronger"
label(data$bks007)="Difficult to bend or straighten knee"
label(data$bks007a)="Which knee difficult to bend or straighten"
label(data$bks008)="Prior year which leg tested"
label(data$bks009)="Pain that stopped you from pushing hard"
label(data$bks024)="Randomization list"
label(data$bks010a)="Right seat bottom depth"
label(data$bks010b)="Right lever arm"
label(data$bks010c)="Right limb weight"
label(data$bks011a)="Right leg concentric test YN"
label(data$bks011b)="Right leg concentric trials at 30 degree"
label(data$bks011c)="Right leg concentric trials at 180 degree"
label(data$bks011d)="Right leg concentric RND"
label(data$bks012a)="Right leg eccentric test YN"
label(data$bks012b)="Right leg eccentric trials at 30 degree"
label(data$bks012c)="Right leg eccentric trials at 180 degree"
label(data$bks012d)="Right leg eccentric RND"
label(data$bks013a)="Right leg Isometric test YN"
label(data$bks013b)="Right leg Isometric trials at 120 degree"
label(data$bks013c)="Right leg Isometric trials at 140 degree"
label(data$bks013d)="Right leg Isometric RND"
label(data$bks020a)="Left seat bottom depth"
label(data$bks020b)="Left lever arm"
label(data$bks020c)="Left limb weight"
label(data$bks021a)="Left leg concentric test YN"
label(data$bks021b)="Left leg concentric trials at 30 degree"
label(data$bks021c)="Left leg concentric trials at 180 degree"
label(data$bks021d)="Left leg concentric RND"
label(data$bks022a)="Left leg eccentric test YN"
label(data$bks022b)="Left leg eccentric trials at 30 degree"
label(data$bks022c)="Left leg eccentric trials at 180 degree"
label(data$bks022d)="Left leg eccentric RND"
label(data$bks023a)="Left leg Isometric test YN"
label(data$bks023b)="Left leg Isometric trials at 120 degree"
label(data$bks023c)="Left leg Isometric trials at 140 degree"
label(data$bks023d)="Left leg Isometric RND"
label(data$auto_id_bioknestr)="Unique Teleform Number"
label(data$testerid_bioknestr)="Tester ID"
label(data$testerid_1_bioknestr)="Tester ID 1"
label(data$testerid_2_bioknestr)="Tester ID 2"

#Create new variables for factors
data$bks001.factor = factor(data$bks001, levels = c("0","1","8"))
levels(data$bks001.factor) = c("No","Yes","Dont know")

data$bks002.factor = factor(data$bks002, levels = c("0","8","1"))
levels(data$bks002.factor) = c("No","Dont know","Yes")

data$bks003.factor = factor(data$bks003, levels = c("0","1","8"))
levels(data$bks003.factor) = c("No","Yes","Dont know")

data$bks004.factor = factor(data$bks004, levels = c("0","1","8"))
levels(data$bks004.factor) = c("No","Yes","Dont know")

data$bks004a.factor = factor(data$bks004a, levels = c("0","1","8"))
levels(data$bks004a.factor) = c("No","Yes","Dont know")

data$bks005.factor = factor(data$bks005, levels = c("0","1","8"))
levels(data$bks005.factor) = c("No","Yes","Dont know")

data$bks005a.factor = factor(data$bks005a, levels = c("2","3","1","8"))
levels(data$bks005a.factor) = c("Left","Both","Right","Dont know")

data$bks006.factor = factor(data$bks006, levels = c("0","1","8"))
levels(data$bks006.factor) = c("No","Yes","Dont know")

data$bks006a.factor = factor(data$bks006a, levels = c("2","1","8"))
levels(data$bks006a.factor) = c("Left","Right","Dont know")

data$bks007.factor = factor(data$bks007, levels = c("0","1","8"))
levels(data$bks007.factor) = c("No","Yes","Dont know")

data$bks007a.factor = factor(data$bks007a, levels = c("3","1","2","8"))
levels(data$bks007a.factor) = c("Both","Right","Left","Dont know")

data$bks008.factor = factor(data$bks008, levels = c("4","1","3","8","2"))
levels(data$bks008.factor) = c("Both","Right","First time","Dont know","Left")

data$bks009.factor = factor(data$bks009, levels = c("0","1","2","3","8"))
levels(data$bks009.factor) = c("No test both sides","Right test Left only","Left test Right only","Both Do not test","Dont know Go to Biodex exam")

data$bks024.factor = factor(data$bks024, levels = c("3","1","4","2"))
levels(data$bks024.factor) = c("Kin-com Right Kin-com Left Biodex Right","Biodex Right Kin-com Left Kin-com right","Kin--com Left Kin-com Right Biodex Left","Biodex Left Kin-com Right Kin-com Left")

data$bks011a.factor = factor(data$bks011a, levels = c("0","1"))
levels(data$bks011a.factor) = c("No","Yes")

data$bks011b.factor = factor(data$bks011b, levels = c("3","2","1","0","4"))
levels(data$bks011b.factor) = c("3","2","1","0","4+")

data$bks011c.factor = factor(data$bks011c, levels = c("3","0","1","2","4"))
levels(data$bks011c.factor) = c("3","0","1","2","4+")

data$bks011d.factor = factor(data$bks011d, levels = c("1","3","7","4","2","8"))
levels(data$bks011d.factor) = c("Ineligible","No Tester","Refused","Time","Technical","Dont know")

data$bks012a.factor = factor(data$bks012a, levels = c("0","1"))
levels(data$bks012a.factor) = c("No","Yes")

data$bks012b.factor = factor(data$bks012b, levels = c("3","2","1","0","4"))
levels(data$bks012b.factor) = c("3","2","1","0","4+")

data$bks012c.factor = factor(data$bks012c, levels = c("3","0","2","1","4"))
levels(data$bks012c.factor) = c("3","0","2","1","4+")

data$bks012d.factor = factor(data$bks012d, levels = c("1","3","7","4","2","8"))
levels(data$bks012d.factor) = c("Ineligible","No Tester","Refused","Time","Technical","Dont know")

data$bks013a.factor = factor(data$bks013a, levels = c("0","1"))
levels(data$bks013a.factor) = c("No","Yes")

data$bks013b.factor = factor(data$bks013b, levels = c("3","0","2","1","4"))
levels(data$bks013b.factor) = c("3","0","2","1","4+")

data$bks013c.factor = factor(data$bks013c, levels = c("3","0","2","1","4"))
levels(data$bks013c.factor) = c("3","0","2","1","4+")

data$bks013d.factor = factor(data$bks013d, levels = c("1","7","3","4","2","8"))
levels(data$bks013d.factor) = c("Ineligible","Refused","No Tester","Time","Technical","Dont know")

data$bks021a.factor = factor(data$bks021a, levels = c("0","1"))
levels(data$bks021a.factor) = c("No","Yes")

data$bks021b.factor = factor(data$bks021b, levels = c("3","0","1","2","4"))
levels(data$bks021b.factor) = c("3","0","1","2","4+")

data$bks021c.factor = factor(data$bks021c, levels = c("3","2","4","0","1"))
levels(data$bks021c.factor) = c("3","2","4+","0","1")

data$bks021d.factor = factor(data$bks021d, levels = c("1","7","3","4","2","8"))
levels(data$bks021d.factor) = c("Ineligible","Refused","No Tester","Time","Technical","Dont know")

data$bks022a.factor = factor(data$bks022a, levels = c("0","1"))
levels(data$bks022a.factor) = c("No","Yes")

data$bks022b.factor = factor(data$bks022b, levels = c("3","1","2","0","4"))
levels(data$bks022b.factor) = c("3","1","2","0","4+")

data$bks022c.factor = factor(data$bks022c, levels = c("3","0","1","2","4"))
levels(data$bks022c.factor) = c("3","0","1","2","4+")

data$bks022d.factor = factor(data$bks022d, levels = c("1","3","7","4","2","8"))
levels(data$bks022d.factor) = c("Ineligible","No Tester","Refused","Time","Technical","Dont know")

data$bks023a.factor = factor(data$bks023a, levels = c("0","1"))
levels(data$bks023a.factor) = c("No","Yes")

data$bks023b.factor = factor(data$bks023b, levels = c("3","0","1","2","4"))
levels(data$bks023b.factor) = c("3","0","1","2","4+")

data$bks023c.factor = factor(data$bks023c, levels = c("3","0","1","2","4"))
levels(data$bks023c.factor) = c("3","0","1","2","4+")

data$bks023d.factor = factor(data$bks023d, levels = c("1","3","7","2","4","8"))
levels(data$bks023d.factor) = c("Ineligible","No Tester","Refused","Technical","Time","Dont know")

