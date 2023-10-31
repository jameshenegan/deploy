#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/der_physicalfunction.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="BLSA Visit Number"
label(data$walkquartermile)="Difficulty/ease walking 1/4 mile"
label(data$walkonemile)="Difficulty/ease walking 1 mile if no difficulty walking 1/4 mile"
label(data$wkindex)="Walking ability summary score"
label(data$stairs10)="Difficulty/ease walking up 10 steps"
label(data$stairs20)="Difficulty/ease walking up 20 steps if no difficulty walking up 10 steps"
label(data$stindex)="Climbing stairs ability summary score"
label(data$liftcarry10)="Difficulty/ease lifting/carrying 10 lbs"
label(data$liftcarry20)="Difficulty/ease lifting/carrying 20 lbs if no difficulty lifting/carrying 10 lbs"
label(data$lcindex)="Lifting/carrying ability summary score"
label(data$handgrip)="Maximum hand grip (kg)"
label(data$did400m)="400 meter walk - completion flag"
label(data$c400secs)="400 meter walk - time (seconds)"
label(data$c400pace)="400 meter walk - pace (m/s)"
label(data$c400aid)="400 meter walk - walking aid use"
label(data$uw150)="Usual pace walk - completion flag"
label(data$uw150meters)="Usual pace walk - distance (meters)"
label(data$uw150pace)="Usual pace walk - pace (m/s)"
label(data$uw150aid)="Usual pace walk - walking aid use"
label(data$adl_trans)="ADL - any difficulty getting in and out of bed or chair"
label(data$adlh_trans)="ADL - need special equipment getting in and out of bed or chair"
label(data$adl_bathe)="ADL - any difficulty bathing or showering"
label(data$adlh_bathe)="ADL - need special equipment bathing or showering"
label(data$adl_dress)="ADL - any difficulty dressing"
label(data$adlh_dress)="ADL - need special equipment dressing"
label(data$adl_eat)="ADL - any difficulty eating"
label(data$adlh_eat)="ADL - need special equipment eating"
label(data$adl_toilet)="ADL - any difficulty using the toilet"
label(data$adlh_toilet)="ADL - need special equipment using the toilet"
label(data$adl_walk)="ADL - any difficulty walking across a small room"
label(data$adlh_walk)="ADL - need special equipment walking across a small room"
label(data$adl_total)="ADL - total score"
label(data$adl_nmiss)="ADL - number missing"
label(data$adl_number)="ADL - number with any difficulty (if all non-missing)"
label(data$iadl_lightwork)="IADL - any difficulty doing light housework"
label(data$iadlh_lightwork)="IADL - do not do light housework for health-related reasons"
label(data$iadl_heavywork)="IADL - any difficulty doing heavy housework"
label(data$iadlh_heavywork)="IADL - do not do heavy housework for health-related reasons"
label(data$iadl_meal)="IADL - any difficulty preparing own meals"
label(data$iadlh_meal)="IADL - do not prepare meals for health-related reasons"
label(data$iadl_shop)="IADL - any difficulty shopping for personal items"
label(data$iadlh_shop)="IADL - do not shop for health-related reasons"
label(data$iadl_phone)="IADL - any difficulty using the telephone"
label(data$iadlh_phone)="IADL - do not use the telephone for health-related reasons"
label(data$iadl_meds)="IADL - any difficulty taking medication"
label(data$iadlh_meds)="IADL - do not take medication for health-related reasons"
label(data$iadl_money)="IADL - any difficulty managing money"
label(data$iadlh_money)="IADL - do not manage money for health-related reasons"
label(data$iadl_drive)="IADL - any difficulty driving"
label(data$iadlh_drive)="IADL - primary reason do not drive"

#Create new variables for factors
data$walkquartermile.factor = factor(data$walkquartermile, levels = c("6","5","0","4","3","2","1"))
levels(data$walkquartermile.factor) = c("very easy","somewhat easy","unable to do","not so easy","a little difficulty","some difficulty","a lot of difficulty")

data$walkonemile.factor = factor(data$walkonemile, levels = c("3","0","2","1"))
levels(data$walkonemile.factor) = c("very easy","difficult","somewhat easy","not so easy")

data$stairs10.factor = factor(data$stairs10, levels = c("6","5","4","2","0","3","1"))
levels(data$stairs10.factor) = c("very easy","somewhat easy","not so easy","some difficulty","unable to do","a little difficulty","a lot of difficulty")

data$stairs20.factor = factor(data$stairs20, levels = c("3","2","0","1"))
levels(data$stairs20.factor) = c("very easy","somewhat easy","difficult","not so easy")

data$liftcarry10.factor = factor(data$liftcarry10, levels = c("6","5","3","2","0","4","1"))
levels(data$liftcarry10.factor) = c("very easy","somewhat easy","a little difficulty","some difficulty","unable to do","not so easy","a lot of difficulty")

data$liftcarry20.factor = factor(data$liftcarry20, levels = c("3","2","0","1"))
levels(data$liftcarry20.factor) = c("very easy","somewhat easy","difficult","not so easy")

data$did400m.factor = factor(data$did400m, levels = c("1","0","3","2","4"))
levels(data$did400m.factor) = c("complete","started but stopped","stopped after 2:30 minute walk","excluded including incomplete 2:30 minute walk","not done for technical reasons/refused")

data$c400aid.factor = factor(data$c400aid, levels = c("0","1"))
levels(data$c400aid.factor) = c("2:30 minute walk without aid","Aid used for 2:30 minute walk")

data$uw150.factor = factor(data$uw150, levels = c("1","3","0","2"))
levels(data$uw150.factor) = c("completed","not done for technical reason/refused","started but stopped","excluded")

data$uw150aid.factor = factor(data$uw150aid, levels = c("0","1"))
levels(data$uw150aid.factor) = c("Usual-paced walk without aid","Aid used for usual-paced walk")

data$adl_trans.factor = factor(data$adl_trans, levels = c("0","1","2","3","4"))
levels(data$adl_trans.factor) = c("none","a little","some","a lot","unable to do")

data$adlh_trans.factor = factor(data$adlh_trans, levels = c("0","1"))
levels(data$adlh_trans.factor) = c("No","Yes")

data$adl_bathe.factor = factor(data$adl_bathe, levels = c("0","1","2","4","3"))
levels(data$adl_bathe.factor) = c("none","a little","some","unable to do","a lot")

data$adlh_bathe.factor = factor(data$adlh_bathe, levels = c("0","1"))
levels(data$adlh_bathe.factor) = c("No","Yes")

data$adl_dress.factor = factor(data$adl_dress, levels = c("0","1","2","3","4"))
levels(data$adl_dress.factor) = c("none","a little","some","a lot","unable to do")

data$adlh_dress.factor = factor(data$adlh_dress, levels = c("0","1"))
levels(data$adlh_dress.factor) = c("No","Yes")

data$adl_eat.factor = factor(data$adl_eat, levels = c("0","2","1","3","4"))
levels(data$adl_eat.factor) = c("none","some","a little","a lot","unable to do")

data$adlh_eat.factor = factor(data$adlh_eat, levels = c("0","1"))
levels(data$adlh_eat.factor) = c("No","Yes")

data$adl_toilet.factor = factor(data$adl_toilet, levels = c("0","1","2","4","3"))
levels(data$adl_toilet.factor) = c("none","a little","some","unable to do","a lot")

data$adlh_toilet.factor = factor(data$adlh_toilet, levels = c("0","1"))
levels(data$adlh_toilet.factor) = c("No","Yes")

data$adl_walk.factor = factor(data$adl_walk, levels = c("0","4","2","1","3"))
levels(data$adl_walk.factor) = c("none","unable to do","some","a little","a lot")

data$adlh_walk.factor = factor(data$adlh_walk, levels = c("0","1"))
levels(data$adlh_walk.factor) = c("No","Yes")

data$iadl_lightwork.factor = factor(data$iadl_lightwork, levels = c("0","2","1","4","3"))
levels(data$iadl_lightwork.factor) = c("none","some","a little","unable to do","a lot")

data$iadlh_lightwork.factor = factor(data$iadlh_lightwork, levels = c("0","1"))
levels(data$iadlh_lightwork.factor) = c("No","Yes")

data$iadl_heavywork.factor = factor(data$iadl_heavywork, levels = c("0","2","1","3","4"))
levels(data$iadl_heavywork.factor) = c("none","some","a little","a lot","unable to do")

data$iadlh_heavywork.factor = factor(data$iadlh_heavywork, levels = c("0","1"))
levels(data$iadlh_heavywork.factor) = c("No","Yes")

data$iadl_meal.factor = factor(data$iadl_meal, levels = c("0","4","1","2","3"))
levels(data$iadl_meal.factor) = c("none","unable to do","a little","some","a lot")

data$iadlh_meal.factor = factor(data$iadlh_meal, levels = c("0","1"))
levels(data$iadlh_meal.factor) = c("No","Yes")

data$iadl_shop.factor = factor(data$iadl_shop, levels = c("0","4","2","1","3"))
levels(data$iadl_shop.factor) = c("none","unable to do","some","a little","a lot")

data$iadlh_shop.factor = factor(data$iadlh_shop, levels = c("1","0"))
levels(data$iadlh_shop.factor) = c("Yes","No")

data$iadl_phone.factor = factor(data$iadl_phone, levels = c("0","1","2","3","4"))
levels(data$iadl_phone.factor) = c("none","a little","some","a lot","unable to do")

data$iadlh_phone.factor = factor(data$iadlh_phone, levels = c("0","1"))
levels(data$iadlh_phone.factor) = c("No","Yes")

data$iadl_meds.factor = factor(data$iadl_meds, levels = c("0","4","1","3","2"))
levels(data$iadl_meds.factor) = c("none","unable to do","a little","a lot","some")

data$iadlh_meds.factor = factor(data$iadlh_meds, levels = c("0","1"))
levels(data$iadlh_meds.factor) = c("No","Yes")

data$iadl_money.factor = factor(data$iadl_money, levels = c("0","4","1","2","3"))
levels(data$iadl_money.factor) = c("none","unable to do","a little","some","a lot")

data$iadlh_money.factor = factor(data$iadlh_money, levels = c("0","1"))
levels(data$iadlh_money.factor) = c("No","Yes")

data$iadl_drive.factor = factor(data$iadl_drive, levels = c("0","1","4","2","3"))
levels(data$iadl_drive.factor) = c("none","a little","unable to do","some","a lot")

data$iadlh_drive.factor = factor(data$iadlh_drive, levels = c("4","3","2","1","5"))
levels(data$iadlh_drive.factor) = c("Health","Vision","No car","Never drove","Lost license")

