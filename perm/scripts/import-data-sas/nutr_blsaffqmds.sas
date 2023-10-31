%let path_to_file = '../data-csv/nutr_blsaffqmds.csv';
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

	INFORMAT bkid1 BEST32.;
	FORMAT bkid1 BEST12.;

	INFORMAT id_seqn BEST32.;
	FORMAT id_seqn BEST12.;

	INFORMAT f_kcal BEST32.;
	FORMAT f_kcal BEST12.;

	INFORMAT mds_veg BEST32.;
	FORMAT mds_veg BEST12.;

	INFORMAT mds_fruit BEST32.;
	FORMAT mds_fruit BEST12.;

	INFORMAT mds_bean BEST32.;
	FORMAT mds_bean BEST12.;

	INFORMAT mds_fish BEST32.;
	FORMAT mds_fish BEST12.;

	INFORMAT mutosfa BEST32.;
	FORMAT mutosfa BEST12.;

	INFORMAT f_grain_who BEST32.;
	FORMAT f_grain_who BEST12.;

	INFORMAT mds_meat BEST32.;
	FORMAT mds_meat BEST12.;

	INFORMAT mds_dairy BEST32.;
	FORMAT mds_dairy BEST12.;

	INFORMAT f_alc BEST32.;
	FORMAT f_alc BEST12.;

	INFORMAT mdscat_veg BEST32.;
	FORMAT mdscat_veg BEST12.;

	INFORMAT mdscat_fruit BEST32.;
	FORMAT mdscat_fruit BEST12.;

	INFORMAT mdscat_beans BEST32.;
	FORMAT mdscat_beans BEST12.;

	INFORMAT mdscat_fish BEST32.;
	FORMAT mdscat_fish BEST12.;

	INFORMAT mdscat_mtosfa BEST32.;
	FORMAT mdscat_mtosfa BEST12.;

	INFORMAT mdscat_wg BEST32.;
	FORMAT mdscat_wg BEST12.;

	INFORMAT mdscat_meat BEST32.;
	FORMAT mdscat_meat BEST12.;

	INFORMAT mdscat_dairy BEST32.;
	FORMAT mdscat_dairy BEST12.;

	INFORMAT medi_score BEST32.;
	FORMAT medi_score BEST12.;

	INFORMAT medi_score3c BEST32.;
	FORMAT medi_score3c BEST12.;

	INPUT
		id_addi
		visit
		bkid1
		id_seqn
		f_kcal
		mds_veg
		mds_fruit
		mds_bean
		mds_fish
		mutosfa
		f_grain_who
		mds_meat
		mds_dairy
		f_alc
		mdscat_veg
		mdscat_fruit
		mdscat_beans
		mdscat_fish
		mdscat_mtosfa
		mdscat_wg
		mdscat_meat
		mdscat_dairy
		medi_score
		medi_score3c
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		bkid1 = "Book ID (for paper version)"
		id_seqn = "Sequence id (for REDcap imported)"
		f_kcal = "Energy (kcal) (food)"
		mds_veg = "Mediterranean Diet Score: Vegetable Intake"
		mds_fruit = "Mediterranean Diet Score: Fruit Intake"
		mds_bean = "Mediterranean Diet Score: Bean Intake"
		mds_fish = "Mediterranean Diet Score: Fish Intake"
		mutosfa = "Ratio of Mono-Unsaturated to Saturated Fat"
		f_grain_who = "Whole Grain Intake Following WHO Guidelines"
		mds_meat = "Mediterranean Diet Score: Meat Intake"
		mds_dairy = "Mediterranean Diet Score: Dairy Intake"
		f_alc = "Alcohol Intake Following Mediterranean Diet Guidelines"
		mdscat_veg = "Mediterranean Diet Score Category: Vegetable Intake"
		mdscat_fruit = "Mediterranean Diet Score Category: Fruit Intake"
		mdscat_beans = "Mediterranean Diet Score Category: Bean Intake"
		mdscat_fish = "Mediterranean Diet Score Category: Fish Intake"
		mdscat_mtosfa = "Mediterranean Diet Score Category: Mono-Unsaturated to Saturated Fat Ratio"
		mdscat_wg = "Mediterranean Diet Score Category: Whole Grains Intake"
		mdscat_meat = "Mediterranean Diet Score Category: Meat Intake"
		mdscat_dairy = "Mediterranean Diet Score Category: Dairy Intake"
		medi_score = "Total Mediterranean Diet Score"
		medi_score3c = "Three Component Total Mediterranean Diet Score"
	;
RUN;


        DATA nutr_blsaffqmds;
            SET WORK.IMPORT;
        RUN;
        