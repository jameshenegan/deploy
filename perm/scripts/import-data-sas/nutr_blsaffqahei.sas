%let path_to_file = '../data-csv/nutr_blsaffqahei.csv';
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

	INFORMAT s_veg BEST32.;
	FORMAT s_veg BEST12.;

	INFORMAT s_fruit BEST32.;
	FORMAT s_fruit BEST12.;

	INFORMAT f_grain_who BEST32.;
	FORMAT f_grain_who BEST12.;

	INFORMAT s_ssbfj BEST32.;
	FORMAT s_ssbfj BEST12.;

	INFORMAT s_nutbean BEST32.;
	FORMAT s_nutbean BEST12.;

	INFORMAT s_red_proc_meat BEST32.;
	FORMAT s_red_proc_meat BEST12.;

	INFORMAT tfat_pctkcal BEST32.;
	FORMAT tfat_pctkcal BEST12.;

	INFORMAT epa_dha BEST32.;
	FORMAT epa_dha BEST12.;

	INFORMAT pufa_pctkcal BEST32.;
	FORMAT pufa_pctkcal BEST12.;

	INFORMAT f_na BEST32.;
	FORMAT f_na BEST12.;

	INFORMAT s_alc_dk BEST32.;
	FORMAT s_alc_dk BEST12.;

	INFORMAT ahei_veg BEST32.;
	FORMAT ahei_veg BEST12.;

	INFORMAT ahei_fruit BEST32.;
	FORMAT ahei_fruit BEST12.;

	INFORMAT ahei_wg BEST32.;
	FORMAT ahei_wg BEST12.;

	INFORMAT ahei_ssbfj BEST32.;
	FORMAT ahei_ssbfj BEST12.;

	INFORMAT ahei_nutbean BEST32.;
	FORMAT ahei_nutbean BEST12.;

	INFORMAT ahei_redprocmeat BEST32.;
	FORMAT ahei_redprocmeat BEST12.;

	INFORMAT ahei_tfat BEST32.;
	FORMAT ahei_tfat BEST12.;

	INFORMAT ahei_epadha BEST32.;
	FORMAT ahei_epadha BEST12.;

	INFORMAT ahei_pufa BEST32.;
	FORMAT ahei_pufa BEST12.;

	INFORMAT ahei_na BEST32.;
	FORMAT ahei_na BEST12.;

	INFORMAT ahei_alc BEST32.;
	FORMAT ahei_alc BEST12.;

	INFORMAT ahei_score BEST32.;
	FORMAT ahei_score BEST12.;

	INPUT
		id_addi
		visit
		f_kcal
		s_veg
		s_fruit
		f_grain_who
		s_ssbfj
		s_nutbean
		s_red_proc_meat
		tfat_pctkcal
		epa_dha
		pufa_pctkcal
		f_na
		s_alc_dk
		ahei_veg
		ahei_fruit
		ahei_wg
		ahei_ssbfj
		ahei_nutbean
		ahei_redprocmeat
		ahei_tfat
		ahei_epadha
		ahei_pufa
		ahei_na
		ahei_alc
		ahei_score
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		f_kcal = "Energy (kcal) (food)"
		s_veg = "Serving of Vegetables"
		s_fruit = "Serving of Fruit"
		f_grain_who = "Whole Grain Intake Following WHO Guidelines"
		s_ssbfj = "Serving of Sugar-Sweetened Beverages and Fruit Juices"
		s_nutbean = "Serving of Nuts and Beans"
		s_red_proc_meat = "Serving of Red and Processed Meat"
		tfat_pctkcal = "Trans Fat as Percentage of Total Calories"
		epa_dha = "EPA and DHA Omega-3 Fatty Acids Intake"
		pufa_pctkcal = "Polyunsaturated Fat as Percentage of Total Calories"
		f_na = "Sodium Intake"
		s_alc_dk = "Serving of Alcoholic Drinks"
		ahei_veg = "AHEI Score for Vegetable Intake"
		ahei_fruit = "AHEI Score for Fruit Intake"
		ahei_wg = "AHEI Score for Whole Grain Intake"
		ahei_ssbfj = "AHEI Score for Sugar-Sweetened Beverages and Fruit Juices Intake"
		ahei_nutbean = "AHEI Score for Nuts and Beans Intake"
		ahei_redprocmeat = "AHEI Score for Red and Processed Meat Intake"
		ahei_tfat = "AHEI Score for Trans Fat Intake"
		ahei_epadha = "AHEI Score for EPA and DHA Omega-3 Fatty Acids Intake"
		ahei_pufa = "AHEI Score for Polyunsaturated Fat Intake"
		ahei_na = "AHEI Score for Sodium Intake"
		ahei_alc = "AHEI Score for Alcohol Intake"
		ahei_score = "Total AHEI Score"
	;
RUN;


        DATA nutr_blsaffqahei;
            SET WORK.IMPORT;
        RUN;
        