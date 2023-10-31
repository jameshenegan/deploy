#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_coreneuropsychtestingn.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_corneutesnew)="CRF Version"
label(data$cogall)="Core Neuropsychological Battery"
label(data$cogallm)="Core Neuropsychological Battery Reason not done"
label(data$cog01)="Benton Visual Retention Test"
label(data$cog01m)="Benton Visual Retention Test Reason not done"
label(data$cog02)="PMA Vocabulary"
label(data$cog02m)="PMA_Vocabulary Reason not done"
label(data$cog03)="WAIS_R Digit Span"
label(data$cog03m)="WAIS_R Digit Span Reason not done"
label(data$cog04)="California Verbal Learning Part 1"
label(data$cog04m)="California Verbal Learning Part 1 Reason not done"
label(data$cog05)="Trail making Part A"
label(data$cog05m)="Trail making Part A reason not done"
label(data$cog06)="Trail making Part B"
label(data$cog06m)="Trail making Part B reason not done"
label(data$cog07)="Purdue Pegboard"
label(data$cog07m)="Purdue Pegboard reason not done"
label(data$cog08)="Card Rotations"
label(data$cog08m)="Card Rotations reason not done"
label(data$cog09)="California Verbal Learning Part 2"
label(data$cog09m)="California Verbal Learning Part 2 Reason not done"
label(data$cog10)="Verbal Fluency Letter F"
label(data$cog10m)="Verbal Fluency Letter F Reason not done"
label(data$cog11)="Verbal Fluency Letter A"
label(data$cog11m)="Verbal Fluency Letter A Reason not done"
label(data$cog12)="Verbal Fluency Letter S"
label(data$cog12m)="Verbal Fluency Letter S Reason not done"
label(data$cog13)="Verbal Fluency Fruit"
label(data$cog13m)="Verbal Fluency Fruit Reason not done"
label(data$cog14)="Verbal Fluency Animals"
label(data$cog14m)="Verbal Fluency Animals Reason not done"
label(data$cog15)="Verbal Fluency Vegtables"
label(data$cog15m)="Verbal Fluency Vegtables Reason not done"
label(data$cog16)="WAIS Digit Symbol Substitution"
label(data$cog16m)="WAIS Digit Symbol Substitution Reason not done"
label(data$cog17)="WRAT"
label(data$cog17m)="WRAT reason not done"
label(data$cog18)="WAIS R Similarities"
label(data$cog18m)="WAIS R Similarities Reason not done"
label(data$cog19)="CESD"
label(data$cog19m)="CESD reson not done"
label(data$borgscore)="Borg Score"
label(data$maskworn_corneutesnew)="COVID-19 Pandemic Mask worn"
label(data$auto_id_corneutesnew)="Unique Teleform Number"
label(data$testerid_corneutesnew)="Tester ID"

#Create new variables for factors
data$cogall.factor = factor(data$cogall, levels = c("1","2","0"))
levels(data$cogall.factor) = c("Complete","Incomplete","Not Administered")

data$cogallm.factor = factor(data$cogallm, levels = c("9","7","5","3","4","1","6","2","8"))
levels(data$cogallm.factor) = c("9-Other","7-Participant refused","5-Sensory/physical problem","3-Other technical problem","4-Cognitively impared","1-Not enough time","6-Non-native English speaker","2-No examiner/room available","8-Low literacy")

data$cog01.factor = factor(data$cog01, levels = c("1","0"))
levels(data$cog01.factor) = c("Complete","Not Administered")

data$cog01m.factor = factor(data$cog01m, levels = c("5","7","9","3","4","6","8","2","1"))
levels(data$cog01m.factor) = c("5-Sensory/physical problem","7-Participant refused","9-Other","3-Other technical problem","4-Cognitively impared","6-Non-native English speaker","8-Low literacy","2-No examiner/room available","1-Not enough time")

data$cog02.factor = factor(data$cog02, levels = c("1","0"))
levels(data$cog02.factor) = c("Complete","Not Administered")

data$cog02m.factor = factor(data$cog02m, levels = c("5","7","9","3","4","6","2","1","8"))
levels(data$cog02m.factor) = c("5-Sensory/physical problem","7-Participant refused","9-Other","3-Other technical problem","4-Cognitively impared","6-Non-native English speaker","2-No examiner/room available","1-Not enough time","8-Low literacy")

data$cog03.factor = factor(data$cog03, levels = c("1","0"))
levels(data$cog03.factor) = c("Complete","Not Administered")

data$cog03m.factor = factor(data$cog03m, levels = c("9","7","1","3","4","5","6","2","8"))
levels(data$cog03m.factor) = c("9-Other","7-Participant refused","1-Not enough time","3-Other technical problem","4-Cognitively impared","5-Sensory/physical problem","6-Non-native English speaker","2-No examiner/room available","8-Low literacy")

data$cog04.factor = factor(data$cog04, levels = c("1","0"))
levels(data$cog04.factor) = c("Complete","Not Administered")

data$cog04m.factor = factor(data$cog04m, levels = c("7","9","5","3","4","6","1","8","2"))
levels(data$cog04m.factor) = c("7-Participant refused","9-Other","5-Sensory/physical problem","3-Other technical problem","4-Cognitively impared","6-Non-native English speaker","1-Not enough time","8-Low literacy","2-No examiner/room available")

data$cog05.factor = factor(data$cog05, levels = c("1","0"))
levels(data$cog05.factor) = c("Complete","Not Administered")

data$cog05m.factor = factor(data$cog05m, levels = c("5","7","9","3","4","6","2","1","8"))
levels(data$cog05m.factor) = c("5-Sensory/physical problem","7-Participant refused","9-Other","3-Other technical problem","4-Cognitively impared","6-Non-native English speaker","2-No examiner/room available","1-Not enough time","8-Low literacy")

data$cog06.factor = factor(data$cog06, levels = c("1","0"))
levels(data$cog06.factor) = c("Complete","Not Administered")

data$cog06m.factor = factor(data$cog06m, levels = c("5","7","9","3","4","6","2","1","8"))
levels(data$cog06m.factor) = c("5-Sensory/physical problem","7-Participant refused","9-Other","3-Other technical problem","4-Cognitively impared","6-Non-native English speaker","2-No examiner/room available","1-Not enough time","8-Low literacy")

data$cog07.factor = factor(data$cog07, levels = c("1","0"))
levels(data$cog07.factor) = c("Complete","Not Administered")

data$cog07m.factor = factor(data$cog07m, levels = c("9","5","7","3","1","4","6","8","2"))
levels(data$cog07m.factor) = c("9-Other","5-Sensory/physical problem","7-Participant refused","3-Other technical problem","1-Not enough time","4-Cognitively impared","6-Non-native English speaker","8-Low literacy","2-No examiner/room available")

data$cog08.factor = factor(data$cog08, levels = c("1","0"))
levels(data$cog08.factor) = c("Complete","Not Administered")

data$cog08m.factor = factor(data$cog08m, levels = c("7","5","9","4","3","1","8","6","2"))
levels(data$cog08m.factor) = c("7-Participant refused","5-Sensory/physical problem","9-Other","4-Cognitively impared","3-Other technical problem","1-Not enough time","8-Low literacy","6-Non-native English speaker","2-No examiner/room available")

data$cog09.factor = factor(data$cog09, levels = c("1","0"))
levels(data$cog09.factor) = c("Complete","Not Administered")

data$cog09m.factor = factor(data$cog09m, levels = c("7","9","5","3","4","1","6","8","2"))
levels(data$cog09m.factor) = c("7-Participant refused","9-Other","5-Sensory/physical problem","3-Other technical problem","4-Cognitively impared","1-Not enough time","6-Non-native English speaker","8-Low literacy","2-No examiner/room available")

data$cog10.factor = factor(data$cog10, levels = c("1","0"))
levels(data$cog10.factor) = c("Complete","Not Administered")

data$cog10m.factor = factor(data$cog10m, levels = c("7","9","3","4","5","6","2","1","8"))
levels(data$cog10m.factor) = c("7-Participant refused","9-Other","3-Other technical problem","4-Cognitively impared","5-Sensory/physical problem","6-Non-native English speaker","2-No examiner/room available","1-Not enough time","8-Low literacy")

data$cog11.factor = factor(data$cog11, levels = c("1","0"))
levels(data$cog11.factor) = c("Complete","Not Administered")

data$cog11m.factor = factor(data$cog11m, levels = c("7","9","3","4","5","6","8","2","1"))
levels(data$cog11m.factor) = c("7-Participant refused","9-Other","3-Other technical problem","4-Cognitively impared","5-Sensory/physical problem","6-Non-native English speaker","8-Low literacy","2-No examiner/room available","1-Not enough time")

data$cog12.factor = factor(data$cog12, levels = c("1","0"))
levels(data$cog12.factor) = c("Complete","Not Administered")

data$cog12m.factor = factor(data$cog12m, levels = c("7","9","3","4","5","6","2","1","8"))
levels(data$cog12m.factor) = c("7-Participant refused","9-Other","3-Other technical problem","4-Cognitively impared","5-Sensory/physical problem","6-Non-native English speaker","2-No examiner/room available","1-Not enough time","8-Low literacy")

data$cog13.factor = factor(data$cog13, levels = c("1","0"))
levels(data$cog13.factor) = c("Complete","Not Administered")

data$cog13m.factor = factor(data$cog13m, levels = c("7","9","3","4","5","6","1","2","8"))
levels(data$cog13m.factor) = c("7-Participant refused","9-Other","3-Other technical problem","4-Cognitively impared","5-Sensory/physical problem","6-Non-native English speaker","1-Not enough time","2-No examiner/room available","8-Low literacy")

data$cog14.factor = factor(data$cog14, levels = c("1","0"))
levels(data$cog14.factor) = c("Complete","Not Administered")

data$cog14m.factor = factor(data$cog14m, levels = c("7","9","3","4","5","6","2","1","8"))
levels(data$cog14m.factor) = c("7-Participant refused","9-Other","3-Other technical problem","4-Cognitively impared","5-Sensory/physical problem","6-Non-native English speaker","2-No examiner/room available","1-Not enough time","8-Low literacy")

data$cog15.factor = factor(data$cog15, levels = c("1","0"))
levels(data$cog15.factor) = c("Complete","Not Administered")

data$cog15m.factor = factor(data$cog15m, levels = c("7","9","3","4","5","6","2","1","8"))
levels(data$cog15m.factor) = c("7-Participant refused","9-Other","3-Other technical problem","4-Cognitively impared","5-Sensory/physical problem","6-Non-native English speaker","2-No examiner/room available","1-Not enough time","8-Low literacy")

data$cog16.factor = factor(data$cog16, levels = c("1","0"))
levels(data$cog16.factor) = c("Complete","Not Administered")

data$cog16m.factor = factor(data$cog16m, levels = c("5","1","7","9","3","4","8","6","2"))
levels(data$cog16m.factor) = c("5-Sensory/physical problem","1-Not enough time","7-Participant refused","9-Other","3-Other technical problem","4-Cognitively impared","8-Low literacy","6-Non-native English speaker","2-No examiner/room available")

data$cog17.factor = factor(data$cog17, levels = c("1","0"))
levels(data$cog17.factor) = c("Complete","Not Administered")

data$cog17m.factor = factor(data$cog17m, levels = c("5","7","9","3","4","1","6","8","2"))
levels(data$cog17m.factor) = c("5-Sensory/physical problem","7-Participant refused","9-Other","3-Other technical problem","4-Cognitively impared","1-Not enough time","6-Non-native English speaker","8-Low literacy","2-No examiner/room available")

data$cog18.factor = factor(data$cog18, levels = c("1","0"))
levels(data$cog18.factor) = c("Complete","Not Administered")

data$cog18m.factor = factor(data$cog18m, levels = c("1","9","7","3","4","5","6","8","2"))
levels(data$cog18m.factor) = c("1-Not enough time","9-Other","7-Participant refused","3-Other technical problem","4-Cognitively impared","5-Sensory/physical problem","6-Non-native English speaker","8-Low literacy","2-No examiner/room available")

data$cog19.factor = factor(data$cog19, levels = c("1","0"))
levels(data$cog19.factor) = c("Complete","Not Administered")

data$cog19m.factor = factor(data$cog19m, levels = c("7","9","3","4","5","1","6","2","8"))
levels(data$cog19m.factor) = c("7-Participant refused","9-Other","3-Other technical problem","4-Cognitively impared","5-Sensory/physical problem","1-Not enough time","6-Non-native English speaker","2-No examiner/room available","8-Low literacy")

data$maskworn_corneutesnew.factor = factor(data$maskworn_corneutesnew, levels = c("1","0"))
levels(data$maskworn_corneutesnew.factor) = c("Yes","No")

