#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/oc_smelltest.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$crf_version_smetes)="CRF Version"
label(data$stdone)="Was smell test completed"
label(data$strnd)="Reason not done"
label(data$stver)="Smell test version"
label(data$stsmell)="Sense of smell"
label(data$stnasal)="Do you have nasal congestion today"
label(data$stcard1)="Card 1"
label(data$stcard2)="Card 2"
label(data$stcard3)="Card 3"
label(data$stcard4)="Card 4"
label(data$stcard5)="Card 5"
label(data$stcard6)="Card 6"
label(data$stcard7)="Card 7"
label(data$stcard8)="Card 8"
label(data$stcard9)="Card 9"
label(data$stcard10)="Card 10"
label(data$stcard11)="Card 11"
label(data$stcard12)="Card 12"
label(data$stcard13)="Card 13"
label(data$stcard14)="Card 14"
label(data$stcard15)="Card 15"
label(data$stcard16)="Card 16"
label(data$stcard1p)="Card 1"
label(data$stcard2p)="Card 2"
label(data$stcard3p)="Card 3"
label(data$stcard4p)="Card 4"
label(data$stcard5p)="Card 5"
label(data$stcard6p)="Card 6"
label(data$stcard7p)="Card 7"
label(data$stcard8p)="Card 8"
label(data$stcard9p)="Card 9"
label(data$stcard10p)="Card 10"
label(data$stcard11p)="Card 11"
label(data$stcard12p)="Card 12"
label(data$stcard13p)="Card 13"
label(data$stcard14p)="Card 14"
label(data$stcard15p)="Card 15"
label(data$stcard16p)="Card 16"
label(data$auto_id_smetes)="Unique Teleform Number"
label(data$testerid_smetes)="Tester ID"

#Create new variables for factors
data$stdone.factor = factor(data$stdone, levels = c("1","0"))
levels(data$stdone.factor) = c("Yes","No")

data$strnd.factor = factor(data$strnd, levels = c("9","5","3","4","7","8","6"))
levels(data$strnd.factor) = c("Not Scheduled","Unable: Physical/Mental","No Time","Refused","No Tester","Not Eligible","Equipment Problem")

data$stver.factor = factor(data$stver, levels = c("2","1"))
levels(data$stver.factor) = c("Purple","Blue")

data$stsmell.factor = factor(data$stsmell, levels = c("3","2","4","1"))
levels(data$stsmell.factor) = c("Good","Fair","Excellent","Poor")

data$stnasal.factor = factor(data$stnasal, levels = c("0","1"))
levels(data$stnasal.factor) = c("No","Yes")

data$stcard1.factor = factor(data$stcard1, levels = c("_1","_0","_00","_000"))
levels(data$stcard1.factor) = c("1-Orange","2-Blackberry","3-Strawberry","4-Pineapple")

data$stcard2.factor = factor(data$stcard2, levels = c("_1","_0","_00","_000"))
levels(data$stcard2.factor) = c("3-Leather","1-Smoke","2-Glue","4-Grass")

data$stcard3.factor = factor(data$stcard3, levels = c("_1","_0","_00","_000"))
levels(data$stcard3.factor) = c("4-Cinnamon","1-Honey","2-Vanilla","3-Chocolate")

data$stcard4.factor = factor(data$stcard4, levels = c("_1","_00","_0","_000"))
levels(data$stcard4.factor) = c("2-Peppermint","3-Fir","1-Chive","4-Onion")

data$stcard5.factor = factor(data$stcard5, levels = c("_1","_0","_000","_00"))
levels(data$stcard5.factor) = c("2-Banana","1-Coconut","4-Cherry","3-Walnut")

data$stcard6.factor = factor(data$stcard6, levels = c("_1","_0","_000","_00"))
levels(data$stcard6.factor) = c("3-Lemon","1-Peach","4-Grapefruit","2-Apple")

data$stcard7.factor = factor(data$stcard7, levels = c("_1","_0","_00","_000"))
levels(data$stcard7.factor) = c("1-Liquorice","2-Cherry","3-Spearmint","4-Cookies")

data$stcard8.factor = factor(data$stcard8, levels = c("_1","_000","_0","_00"))
levels(data$stcard8.factor) = c("4-Turpentine","3-Menthol","1-Mustard","2-Rubber")

data$stcard9.factor = factor(data$stcard9, levels = c("_1","_0","_00","_000"))
levels(data$stcard9.factor) = c("3-Garlic","1-Onion","2-Sauerkraut","4-Carrot")

data$stcard10.factor = factor(data$stcard10, levels = c("_1","_0","_000","_00"))
levels(data$stcard10.factor) = c("2-Coffee","1-Cigarettes","4-Smoke","3-Wine")

data$stcard11.factor = factor(data$stcard11, levels = c("_0","_00","_1","_000"))
levels(data$stcard11.factor) = c("1-Melon","2-Peach","4-Apple","3-Orange")

data$stcard12.factor = factor(data$stcard12, levels = c("_1","_00","_0","_000"))
levels(data$stcard12.factor) = c("1-Clove","3-Cinnamon","2-Pepper","4-Mustard")

data$stcard13.factor = factor(data$stcard13, levels = c("_1","_0","_000","_00"))
levels(data$stcard13.factor) = c("4-Pineapple","1-Pear","3-Peach","2-Plum")

data$stcard14.factor = factor(data$stcard14, levels = c("_1","_0","_00","_000"))
levels(data$stcard14.factor) = c("3-Rose","1-Chamomile","2-Raspberry","4-Cherry")

data$stcard15.factor = factor(data$stcard15, levels = c("_1","_0","_000","_00"))
levels(data$stcard15.factor) = c("1-Anise","2-Rum","4-Fir","3-Honey")

data$stcard16.factor = factor(data$stcard16, levels = c("_1","_0","_000","_00"))
levels(data$stcard16.factor) = c("2-Fish","1-Bread","4-Ham","3-Cheese")

data$stcard1p.factor = factor(data$stcard1p, levels = c("_1","_0","_000","_00"))
levels(data$stcard1p.factor) = c("2-Pear","1-Peppermint","4-Orange","3-Parsley")

data$stcard2p.factor = factor(data$stcard2p, levels = c("_1","_00","_0","_000"))
levels(data$stcard2p.factor) = c("1-Coke","3-Wine gum","2-Apple","4-Lemon")

data$stcard3p.factor = factor(data$stcard3p, levels = c("_1","_00","_0","_000"))
levels(data$stcard3p.factor) = c("3-Lilac","2-Fir","1-Mint","4-Chive")

data$stcard4p.factor = factor(data$stcard4p, levels = c("_1","_0","_00","_000"))
levels(data$stcard4p.factor) = c("2-Grapefruit","1-Peach","3-Grape","4-Strawberry")

data$stcard5p.factor = factor(data$stcard5p, levels = c("_1","_0","_00","_000"))
levels(data$stcard5p.factor) = c("4-Grass","1-Rose","2-Sauerkraut","3-Carrot")

data$stcard6p.factor = factor(data$stcard6p, levels = c("_1","_0","_00","_000"))
levels(data$stcard6p.factor) = c("3-Raspberry","1-Plum","2-Melon","4-Orange")

data$stcard7p.factor = factor(data$stcard7p, levels = c("_1","_000","_00","_0"))
levels(data$stcard7p.factor) = c("1-Eucalyptus","4-Fir","3-Liquorice","2-Lemon")

data$stcard8p.factor = factor(data$stcard8p, levels = c("_1","_0","_00","_000"))
levels(data$stcard8p.factor) = c("3-Ginger","1-Paprika","2-Vanilla","4-Pepper")

data$stcard9p.factor = factor(data$stcard9p, levels = c("_1","_0","_00","_000"))
levels(data$stcard9p.factor) = c("4-Coconut","1-Cinnamon","2-Chocolate","3-Peanut")

data$stcard10p.factor = factor(data$stcard10p, levels = c("_1","_00","_0","_000"))
levels(data$stcard10p.factor) = c("Lavender","Fir","1-Grass","Rose")

data$stcard11p.factor = factor(data$stcard11p, levels = c("_1","_00","_0","_000"))
levels(data$stcard11p.factor) = c("4-Melon","2-Currant","1-Lemon","3-Orange")

data$stcard12p.factor = factor(data$stcard12p, levels = c("_1","_0","_00","_000"))
levels(data$stcard12p.factor) = c("2-Peach","1-Cherry","3-Apple","4-Strawberry")

data$stcard13p.factor = factor(data$stcard13p, levels = c("_1","_000","_0","_00"))
levels(data$stcard13p.factor) = c("2-Mushroom","4-Wood","1-Garlic","3-Ham")

data$stcard14p.factor = factor(data$stcard14p, levels = c("_1","_000","_0","_00"))
levels(data$stcard14p.factor) = c("1-Smoked meat","4-Salami","2-Leather","3-Cigarette")

data$stcard15p.factor = factor(data$stcard15p, levels = c("_1","_0","_00","_000"))
levels(data$stcard15p.factor) = c("4-Caramel","1-Cookies","2-Orange","3-Wine gum")

data$stcard16p.factor = factor(data$stcard16p, levels = c("_1","_0","_00","_000"))
levels(data$stcard16p.factor) = c("3-Onion","1-Pepper","2-Nutmeg","4-Mustart")

