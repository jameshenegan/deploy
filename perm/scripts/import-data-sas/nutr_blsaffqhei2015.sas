%let path_to_file = '../data-csv/nutr_blsaffqhei2015.csv';
OPTIONS nofmterr;

    
DATA WORK.IMPORT;
	%let _EFIERR_ = 0;
	INFILE &path_to_file.
	DELIMITER = ','
	MISSOVER
	DSD
	FIRSTOBS = 2;                

	INFORMAT id_addi BEST32.;
	FORMAT id_addi BEST12.;

	INFORMAT visit BEST32.;
	FORMAT visit BEST12.;

	INFORMAT f_kcal BEST32.;
	FORMAT f_kcal BEST12.;

	INFORMAT cupmilk BEST32.;
	FORMAT cupmilk BEST12.;

	INFORMAT cupyogurt BEST32.;
	FORMAT cupyogurt BEST12.;

	INFORMAT cupcheese BEST32.;
	FORMAT cupcheese BEST12.;

	INFORMAT cupsoymilk BEST32.;
	FORMAT cupsoymilk BEST12.;

	INFORMAT cupdairy BEST32.;
	FORMAT cupdairy BEST12.;

	INFORMAT cupwholefruit BEST32.;
	FORMAT cupwholefruit BEST12.;

	INFORMAT cupjuice BEST32.;
	FORMAT cupjuice BEST12.;

	INFORMAT cuptotfruit BEST32.;
	FORMAT cuptotfruit BEST12.;

	INFORMAT cuporveg BEST32.;
	FORMAT cuporveg BEST12.;

	INFORMAT cupgreenveg BEST32.;
	FORMAT cupgreenveg BEST12.;

	INFORMAT cupotherveg BEST32.;
	FORMAT cupotherveg BEST12.;

	INFORMAT cupstarchveg BEST32.;
	FORMAT cupstarchveg BEST12.;

	INFORMAT cupveg BEST32.;
	FORMAT cupveg BEST12.;

	INFORMAT cupbean BEST32.;
	FORMAT cupbean BEST12.;

	INFORMAT ozsoy BEST32.;
	FORMAT ozsoy BEST12.;

	INFORMAT oznut BEST32.;
	FORMAT oznut BEST12.;

	INFORMAT ozpoultry BEST32.;
	FORMAT ozpoultry BEST12.;

	INFORMAT ozmeat BEST32.;
	FORMAT ozmeat BEST12.;

	INFORMAT ozsea BEST32.;
	FORMAT ozsea BEST12.;

	INFORMAT ozegg BEST32.;
	FORMAT ozegg BEST12.;

	INFORMAT ozbean BEST32.;
	FORMAT ozbean BEST12.;

	INFORMAT ozprot BEST32.;
	FORMAT ozprot BEST12.;

	INFORMAT kcaltotfruit BEST32.;
	FORMAT kcaltotfruit BEST12.;

	INFORMAT kcalwholefruit BEST32.;
	FORMAT kcalwholefruit BEST12.;

	INFORMAT kcaltotveg BEST32.;
	FORMAT kcaltotveg BEST12.;

	INFORMAT kcalgreenbean BEST32.;
	FORMAT kcalgreenbean BEST12.;

	INFORMAT kcaldairy BEST32.;
	FORMAT kcaldairy BEST12.;

	INFORMAT kcaltotprot BEST32.;
	FORMAT kcaltotprot BEST12.;

	INFORMAT kcalseaplant BEST32.;
	FORMAT kcalseaplant BEST12.;

	INFORMAT kcalna BEST32.;
	FORMAT kcalna BEST12.;

	INFORMAT kcalwg BEST32.;
	FORMAT kcalwg BEST12.;

	INFORMAT kcalrg BEST32.;
	FORMAT kcalrg BEST12.;

	INFORMAT pctkcal_asugar BEST32.;
	FORMAT pctkcal_asugar BEST12.;

	INFORMAT pctkcal_sfa BEST32.;
	FORMAT pctkcal_sfa BEST12.;

	INFORMAT hei_totfruit BEST32.;
	FORMAT hei_totfruit BEST12.;

	INFORMAT hei_wholefruit BEST32.;
	FORMAT hei_wholefruit BEST12.;

	INFORMAT hei_totveg BEST32.;
	FORMAT hei_totveg BEST12.;

	INFORMAT hei_greenbean BEST32.;
	FORMAT hei_greenbean BEST12.;

	INFORMAT hei_dairy BEST32.;
	FORMAT hei_dairy BEST12.;

	INFORMAT hei_totprot BEST32.;
	FORMAT hei_totprot BEST12.;

	INFORMAT hei_seaplant BEST32.;
	FORMAT hei_seaplant BEST12.;

	INFORMAT hei_faratio BEST32.;
	FORMAT hei_faratio BEST12.;

	INFORMAT hei_na BEST32.;
	FORMAT hei_na BEST12.;

	INFORMAT hei_wg BEST32.;
	FORMAT hei_wg BEST12.;

	INFORMAT hei_rg BEST32.;
	FORMAT hei_rg BEST12.;

	INFORMAT hei_asugar BEST32.;
	FORMAT hei_asugar BEST12.;

	INFORMAT hei_sfa BEST32.;
	FORMAT hei_sfa BEST12.;

	INFORMAT hei15_score BEST32.;
	FORMAT hei15_score BEST12.;

	INPUT
		id_addi
		visit
		f_kcal
		cupmilk
		cupyogurt
		cupcheese
		cupsoymilk
		cupdairy
		cupwholefruit
		cupjuice
		cuptotfruit
		cuporveg
		cupgreenveg
		cupotherveg
		cupstarchveg
		cupveg
		cupbean
		ozsoy
		oznut
		ozpoultry
		ozmeat
		ozsea
		ozegg
		ozbean
		ozprot
		kcaltotfruit
		kcalwholefruit
		kcaltotveg
		kcalgreenbean
		kcaldairy
		kcaltotprot
		kcalseaplant
		kcalna
		kcalwg
		kcalrg
		pctkcal_asugar
		pctkcal_sfa
		hei_totfruit
		hei_wholefruit
		hei_totveg
		hei_greenbean
		hei_dairy
		hei_totprot
		hei_seaplant
		hei_faratio
		hei_na
		hei_wg
		hei_rg
		hei_asugar
		hei_sfa
		hei15_score
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		f_kcal = "Energy (kcal) (food)"
		cupmilk = "Cup Measurement: Milk Intake"
		cupyogurt = "Cup Measurement: Yogurt Intake"
		cupcheese = "Cup Measurement: Cheese Intake"
		cupsoymilk = "Cup Measurement: Soy Milk Intake"
		cupdairy = "Cup Measurement: Total Dairy Intake"
		cupwholefruit = "Cup Measurement: Whole Fruit Intake"
		cupjuice = "Cup Measurement: Juice Intake"
		cuptotfruit = "Cup Measurement: Total Fruit Intake"
		cuporveg = "Cup Measurement: Orange Vegetables Intake"
		cupgreenveg = "Cup Measurement: Green Vegetables Intake"
		cupotherveg = "Cup Measurement: Other Vegetables Intake"
		cupstarchveg = "Cup Measurement: Starchy Vegetables Intake"
		cupveg = "Cup Measurement: Total Vegetables Intake"
		cupbean = "Cup Measurement: Bean Intake"
		ozsoy = "Ounce Measurement: Soy Intake"
		oznut = "Ounce Measurement: Nut Intake"
		ozpoultry = "Ounce Measurement: Poultry Intake"
		ozmeat = "Ounce Measurement: Meat Intake"
		ozsea = "Ounce Measurement: Seafood Intake"
		ozegg = "Ounce Measurement: Egg Intake"
		ozbean = "Ounce Measurement: Bean Intake"
		ozprot = "Ounce Measurement: Total Protein Intake"
		kcaltotfruit = "Caloric Content: Total Fruit"
		kcalwholefruit = "Caloric Content: Whole Fruit"
		kcaltotveg = "Caloric Content: Total Vegetables"
		kcalgreenbean = "Caloric Content: Green Beans"
		kcaldairy = "Caloric Content: Dairy"
		kcaltotprot = "Caloric Content: Total Protein"
		kcalseaplant = "Caloric Content: Sea Plants"
		kcalna = "Caloric Content: Sodium"
		kcalwg = "Caloric Content: Whole Grains"
		kcalrg = "Caloric Content: Refined Grains"
		pctkcal_asugar = "Percentage of Calories from Added Sugar"
		pctkcal_sfa = "Percentage of Calories from Saturated Fat"
		hei_totfruit = "HEI Score: Total Fruit Intake"
		hei_wholefruit = "HEI Score: Whole Fruit Intake"
		hei_totveg = "HEI Score: Total Vegetable Intake"
		hei_greenbean = "HEI Score: Green Bean Intake"
		hei_dairy = "HEI Score: Dairy Intake"
		hei_totprot = "HEI Score: Total Protein Intake"
		hei_seaplant = "HEI Score: Sea Plant Intake"
		hei_faratio = "HEI Score: Fatty Acid Ratio"
		hei_na = "HEI Score: Sodium Intake"
		hei_wg = "HEI Score: Whole Grain Intake"
		hei_rg = "HEI Score: Refined Grain Intake"
		hei_asugar = "HEI Score: Added Sugar Intake"
		hei_sfa = "HEI Score: Saturated Fat Intake"
		hei15_score = "Total HEI-2015 Score"
	;
RUN;


        DATA nutr_blsaffqhei2015;
            SET WORK.IMPORT;
        RUN;
        