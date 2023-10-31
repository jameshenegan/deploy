%let path_to_file = '../data-csv/der_labs.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE ldl5cat_
		1 = 'Optimal: LDL < 100 mg/dL'
		2 = 'Near/Above Optimal: 100 less than or equal to LDL < 130 mg/dL'
		3 = 'Borderline High: 130 less than or equal to LDL < 160 mg/dL'
		4 = 'High: 160 less than or equal to LDL < 190 mg/dL'
		5 = 'Very High: LDL ≥ 190 mg/dL'
	;

	VALUE hdl3cat_
		3 = 'High: HDL ≥ 60 mg/dL'
		2 = 'Normal: 40 less than or equal to HDL < 60 (males); 50 less than or equal to HDL < 60 mg/dL (females)'
		1 = 'Low: HDL < 40 (males); HDL < 50 mg/dL (females)'
	;

	VALUE trigs4cat_
		1 = 'Normal: Trigs < 150 mg/dL'
		2 = 'Borderline High: 150 <= Trigs < 200 mg/dL'
		3 = 'High: 200 <= Trigs < 500 mg/dL'
		4 = 'Very High: Trigs >= 500 mg/dL'
	;

	VALUE anemia_
		0 = 'Normal Hgb: Hgb greater than or equal to 40 (males); Hgb greater than or equal to 12 g/dL (females)'
		1 = 'Anemia: Hgb < 13 (males); Hgb < 12 g/dL (females)'
	;

RUN;

    
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

	INFORMAT ldl BEST32.;
	FORMAT ldl BEST12.;

	INFORMAT ldl5cat BEST32.;
	FORMAT ldl5cat BEST12.;

	INFORMAT hdl BEST32.;
	FORMAT hdl BEST12.;

	INFORMAT hdl3cat BEST32.;
	FORMAT hdl3cat BEST12.;

	INFORMAT trigs BEST32.;
	FORMAT trigs BEST12.;

	INFORMAT trigs4cat BEST32.;
	FORMAT trigs4cat BEST12.;

	INFORMAT hgb BEST32.;
	FORMAT hgb BEST12.;

	INFORMAT anemia BEST32.;
	FORMAT anemia BEST12.;

	INPUT
		id_addi
		visit
		ldl
		ldl5cat
		hdl
		hdl3cat
		trigs
		trigs4cat
		hgb
		anemia
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "BLSA Visit Number"
		ldl = "LDL Cholesterol (mg/dL)"
		ldl5cat = "ATP III Fasting LDL Categorization"
		hdl = "HDL Cholesterol (mg/dL)"
		hdl3cat = "ATP III Fasting HDL Categorization"
		trigs = "Triglycerides (mg/dL)"
		trigs4cat = "ATP III Fasting Triglyceride Categorization"
		hgb = "Hemoglobin (g/dL)"
		anemia = "Anemia Classification"
	;
	FORMAT
		ldl5cat ldl5cat_.
		hdl3cat hdl3cat_.
		trigs4cat trigs4cat_.
		anemia anemia_.
	;
RUN;


        DATA der_labs;
            SET WORK.IMPORT;
        RUN;
        