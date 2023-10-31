%let path_to_file = '../data-csv/nutr_blsaffqmind.csv';
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

	INFORMAT kcal BEST32.;
	FORMAT kcal BEST12.;

	INFORMAT visit BEST32.;
	FORMAT visit BEST12.;

	INFORMAT d_wg BEST32.;
	FORMAT d_wg BEST12.;

	INFORMAT d_veg_leafy BEST32.;
	FORMAT d_veg_leafy BEST12.;

	INFORMAT d_veg_other BEST32.;
	FORMAT d_veg_other BEST12.;

	INFORMAT d_berry BEST32.;
	FORMAT d_berry BEST12.;

	INFORMAT d_nuts BEST32.;
	FORMAT d_nuts BEST12.;

	INFORMAT d_oil_olive BEST32.;
	FORMAT d_oil_olive BEST12.;

	INFORMAT d_buttermarg BEST32.;
	FORMAT d_buttermarg BEST12.;

	INFORMAT d_cheese BEST32.;
	FORMAT d_cheese BEST12.;

	INFORMAT d_fish BEST32.;
	FORMAT d_fish BEST12.;

	INFORMAT d_bean BEST32.;
	FORMAT d_bean BEST12.;

	INFORMAT d_poultry BEST32.;
	FORMAT d_poultry BEST12.;

	INFORMAT d_redprocmeat BEST32.;
	FORMAT d_redprocmeat BEST12.;

	INFORMAT d_friedfood BEST32.;
	FORMAT d_friedfood BEST12.;

	INFORMAT d_sweet BEST32.;
	FORMAT d_sweet BEST12.;

	INFORMAT d_wine BEST32.;
	FORMAT d_wine BEST12.;

	INFORMAT maxoil BEST32.;
	FORMAT maxoil BEST12.;

	INFORMAT mind_greenveg BEST32.;
	FORMAT mind_greenveg BEST12.;

	INFORMAT mind_otherveg BEST32.;
	FORMAT mind_otherveg BEST12.;

	INFORMAT mind_berry BEST32.;
	FORMAT mind_berry BEST12.;

	INFORMAT mind_nuts BEST32.;
	FORMAT mind_nuts BEST12.;

	INFORMAT mind_oliveoil BEST32.;
	FORMAT mind_oliveoil BEST12.;

	INFORMAT mind_buttermarg BEST32.;
	FORMAT mind_buttermarg BEST12.;

	INFORMAT mind_cheese BEST32.;
	FORMAT mind_cheese BEST12.;

	INFORMAT mind_wg BEST32.;
	FORMAT mind_wg BEST12.;

	INFORMAT mind_fish BEST32.;
	FORMAT mind_fish BEST12.;

	INFORMAT mind_bean BEST32.;
	FORMAT mind_bean BEST12.;

	INFORMAT mind_poultry BEST32.;
	FORMAT mind_poultry BEST12.;

	INFORMAT mind_redprocmeat BEST32.;
	FORMAT mind_redprocmeat BEST12.;

	INFORMAT mind_friedfood BEST32.;
	FORMAT mind_friedfood BEST12.;

	INFORMAT mind_sweet BEST32.;
	FORMAT mind_sweet BEST12.;

	INFORMAT mind_wine BEST32.;
	FORMAT mind_wine BEST12.;

	INFORMAT mind_score BEST32.;
	FORMAT mind_score BEST12.;

	INFORMAT age BEST32.;
	FORMAT age BEST12.;

	INPUT
		id_addi
		kcal
		visit
		d_wg
		d_veg_leafy
		d_veg_other
		d_berry
		d_nuts
		d_oil_olive
		d_buttermarg
		d_cheese
		d_fish
		d_bean
		d_poultry
		d_redprocmeat
		d_friedfood
		d_sweet
		d_wine
		maxoil
		mind_greenveg
		mind_otherveg
		mind_berry
		mind_nuts
		mind_oliveoil
		mind_buttermarg
		mind_cheese
		mind_wg
		mind_fish
		mind_bean
		mind_poultry
		mind_redprocmeat
		mind_friedfood
		mind_sweet
		mind_wine
		mind_score
		age
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		kcal = "Energy (kcal)"
		visit = "Visit Number"
		d_wg = "Daily Whole Grains Intake"
		d_veg_leafy = "Daily Leafy Vegetables Intake"
		d_veg_other = "Daily Other Vegetables Intake"
		d_berry = "Daily Berries Intake"
		d_nuts = "Daily Nuts Intake"
		d_oil_olive = "Daily Olive Oil Intake"
		d_buttermarg = "Daily Butter/Margarine Intake"
		d_cheese = "Daily Cheese Intake"
		d_fish = "Daily Fish Intake"
		d_bean = "Daily Bean Intake"
		d_poultry = "Daily Poultry Intake"
		d_redprocmeat = "Daily Red/Processed Meat Intake"
		d_friedfood = "Daily Fried/Fast Food Intake"
		d_sweet = "Daily Pastries/Sweets Intake"
		d_wine = "Daily Wine Intake"
		maxoil = "Maximum Oil Intake"
		mind_greenveg = "MIND Score for Green Leafy Vegetables"
		mind_otherveg = "MIND Score for Other Vegetables"
		mind_berry = "MIND Score for Berries"
		mind_nuts = "MIND Score for Nuts"
		mind_oliveoil = "MIND Score for Olive Oil"
		mind_buttermarg = "MIND Score for Butter/Margarine"
		mind_cheese = "MIND Score for Cheese"
		mind_wg = "MIND Score for Whole Grains"
		mind_fish = "MIND Score for Fish"
		mind_bean = "MIND Score for Beans"
		mind_poultry = "MIND Score for Poultry"
		mind_redprocmeat = "MIND Score for Red/Processed Meat"
		mind_friedfood = "MIND Score for Fried/Fast Food"
		mind_sweet = "MIND Score for Pastries/Sweets"
		mind_wine = "MIND Score for Wine"
		mind_score = "Total MIND Diet Score"
		age = "Age"
	;
RUN;


        DATA nutr_blsaffqmind;
            SET WORK.IMPORT;
        RUN;
        