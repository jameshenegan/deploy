#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/nutr_blsaffqhei2015.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$id_addi)="Masked Participant ID for ADDI"
label(data$visit)="Visit Number"
label(data$f_kcal)="Energy (kcal) (food)"
label(data$cupmilk)="Cup Measurement: Milk Intake"
label(data$cupyogurt)="Cup Measurement: Yogurt Intake"
label(data$cupcheese)="Cup Measurement: Cheese Intake"
label(data$cupsoymilk)="Cup Measurement: Soy Milk Intake"
label(data$cupdairy)="Cup Measurement: Total Dairy Intake"
label(data$cupwholefruit)="Cup Measurement: Whole Fruit Intake"
label(data$cupjuice)="Cup Measurement: Juice Intake"
label(data$cuptotfruit)="Cup Measurement: Total Fruit Intake"
label(data$cuporveg)="Cup Measurement: Orange Vegetables Intake"
label(data$cupgreenveg)="Cup Measurement: Green Vegetables Intake"
label(data$cupotherveg)="Cup Measurement: Other Vegetables Intake"
label(data$cupstarchveg)="Cup Measurement: Starchy Vegetables Intake"
label(data$cupveg)="Cup Measurement: Total Vegetables Intake"
label(data$cupbean)="Cup Measurement: Bean Intake"
label(data$ozsoy)="Ounce Measurement: Soy Intake"
label(data$oznut)="Ounce Measurement: Nut Intake"
label(data$ozpoultry)="Ounce Measurement: Poultry Intake"
label(data$ozmeat)="Ounce Measurement: Meat Intake"
label(data$ozsea)="Ounce Measurement: Seafood Intake"
label(data$ozegg)="Ounce Measurement: Egg Intake"
label(data$ozbean)="Ounce Measurement: Bean Intake"
label(data$ozprot)="Ounce Measurement: Total Protein Intake"
label(data$kcaltotfruit)="Caloric Content: Total Fruit"
label(data$kcalwholefruit)="Caloric Content: Whole Fruit"
label(data$kcaltotveg)="Caloric Content: Total Vegetables"
label(data$kcalgreenbean)="Caloric Content: Green Beans"
label(data$kcaldairy)="Caloric Content: Dairy"
label(data$kcaltotprot)="Caloric Content: Total Protein"
label(data$kcalseaplant)="Caloric Content: Sea Plants"
label(data$kcalna)="Caloric Content: Sodium"
label(data$kcalwg)="Caloric Content: Whole Grains"
label(data$kcalrg)="Caloric Content: Refined Grains"
label(data$pctkcal_asugar)="Percentage of Calories from Added Sugar"
label(data$pctkcal_sfa)="Percentage of Calories from Saturated Fat"
label(data$hei_totfruit)="HEI Score: Total Fruit Intake"
label(data$hei_wholefruit)="HEI Score: Whole Fruit Intake"
label(data$hei_totveg)="HEI Score: Total Vegetable Intake"
label(data$hei_greenbean)="HEI Score: Green Bean Intake"
label(data$hei_dairy)="HEI Score: Dairy Intake"
label(data$hei_totprot)="HEI Score: Total Protein Intake"
label(data$hei_seaplant)="HEI Score: Sea Plant Intake"
label(data$hei_faratio)="HEI Score: Fatty Acid Ratio"
label(data$hei_na)="HEI Score: Sodium Intake"
label(data$hei_wg)="HEI Score: Whole Grain Intake"
label(data$hei_rg)="HEI Score: Refined Grain Intake"
label(data$hei_asugar)="HEI Score: Added Sugar Intake"
label(data$hei_sfa)="HEI Score: Saturated Fat Intake"
label(data$hei15_score)="Total HEI-2015 Score"
