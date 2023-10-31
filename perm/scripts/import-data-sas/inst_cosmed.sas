%let path_to_file = '../data-csv/inst_cosmed.csv';
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

	INFORMAT test_number BEST32.;
	FORMAT test_number BEST12.;

	INFORMAT study_cosmed BEST32.;
	FORMAT study_cosmed BEST12.;

	INFORMAT aid BEST32.;
	FORMAT aid BEST12.;

	INFORMAT notes_cosmed $1.;
	FORMAT notes_cosmed $1.;

	INFORMAT clinic_test $11.;
	FORMAT clinic_test $11.;

	INFORMAT weight_kg_cosmed BEST32.;
	FORMAT weight_kg_cosmed BEST12.;

	INFORMAT sex_cosmed $1.;
	FORMAT sex_cosmed $1.;

	INFORMAT age_cosmed BEST32.;
	FORMAT age_cosmed BEST12.;

	INFORMAT height_cm_cosmed BEST32.;
	FORMAT height_cm_cosmed BEST12.;

	INFORMAT bsa___m2 BEST32.;
	FORMAT bsa___m2 BEST12.;

	INFORMAT amr___kcal_day BEST32.;
	FORMAT amr___kcal_day BEST12.;

	INFORMAT barometric_press___mmhg BEST32.;
	FORMAT barometric_press___mmhg BEST12.;

	INFORMAT bmi_kg_m2_cosmed BEST32.;
	FORMAT bmi_kg_m2_cosmed BEST12.;

	INFORMAT btps_exp BEST32.;
	FORMAT btps_exp BEST12.;

	INFORMAT btps_insp BEST32.;
	FORMAT btps_insp BEST12.;

	INFORMAT duration___hhmmss TIME20.;
	FORMAT duration___hhmmss TIME20.;

	INFORMAT hr_max___bpm BEST32.;
	FORMAT hr_max___bpm BEST12.;

	INFORMAT humidity_flowmpct BEST32.;
	FORMAT humidity_flowmpct BEST12.;

	INFORMAT humiditypct BEST32.;
	FORMAT humiditypct BEST12.;

	INFORMAT n_of_steps BEST32.;
	FORMAT n_of_steps BEST12.;

	INFORMAT stpd BEST32.;
	FORMAT stpd BEST12.;

	INFORMAT temperature___degrees_c BEST32.;
	FORMAT temperature___degrees_c BEST12.;

	INFORMAT temp_flowm___degrees_c BEST32.;
	FORMAT temp_flowm___degrees_c BEST12.;

	INFORMAT un___g_day BEST32.;
	FORMAT un___g_day BEST12.;

	INFORMAT vd___ml BEST32.;
	FORMAT vd___ml BEST12.;

	INPUT
		id_addi
		visit
		test_number
		study_cosmed
		aid
		notes_cosmed
		clinic_test
		weight_kg_cosmed
		sex_cosmed
		age_cosmed
		height_cm_cosmed
		bsa___m2
		amr___kcal_day
		barometric_press___mmhg
		bmi_kg_m2_cosmed
		btps_exp
		btps_insp
		duration___hhmmss
		hr_max___bpm
		humidity_flowmpct
		humiditypct
		n_of_steps
		stpd
		temperature___degrees_c
		temp_flowm___degrees_c
		un___g_day
		vd___ml
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		test_number = "Test Number"
		study_cosmed = "Study"
		aid = "Auto-incrementing ID"
		notes_cosmed = ""
		clinic_test = "Clinic Test"
		weight_kg_cosmed = ""
		sex_cosmed = ""
		age_cosmed = ""
		height_cm_cosmed = ""
		bsa___m2 = "Body Surface Area (meters squared)"
		amr___kcal_day = "Active Metabolic Rate (kilo-calories per day)"
		barometric_press___mmhg = "Barometric Pressure (millimeters mercury)"
		bmi_kg_m2_cosmed = ""
		btps_exp = "BTPS exp"
		btps_insp = "BTPS insp"
		duration___hhmmss = "Test Duration"
		hr_max___bpm = "Maximum Heart Rate (beats per minute)"
		humidity_flowmpct = ""
		humiditypct = ""
		n_of_steps = ""
		stpd = ""
		temperature___degrees_c = ""
		temp_flowm___degrees_c = ""
		un___g_day = ""
		vd___ml = ""
	;
RUN;


        DATA inst_cosmed;
            SET WORK.IMPORT;
        RUN;
        