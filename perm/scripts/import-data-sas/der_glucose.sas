%let path_to_file = '../data-csv/der_glucose.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE glucose0_3cat_
		0 = 'Normal Glucose Tolerance'
		1 = 'Pre-Diabetes'
		2 = 'Type 2 Diabetes'
	;

	VALUE glucose120_3cat_
		0 = 'Normal Glucose Tolerance'
		1 = 'Pre-Diabetes'
		2 = 'Type 2 Diabetes'
	;

	VALUE hba1c3cat_
		1 = 'Pre-Diabetes'
		0 = 'Normal Glucose Tolerance'
		2 = 'Type 2 Diabetes'
	;

	VALUE glucose3cat_
		0 = 'Normal Glucose Tolerance'
		1 = 'Pre-Diabetes'
		2 = 'Type 2 Diabetes'
	;

	VALUE diab3cat_
		1 = 'Pre-Diabetes'
		2 = 'Type 2 Diabetes'
		0 = 'Normal Glucose Tolerance'
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

	INFORMAT gluload BEST32.;
	FORMAT gluload BEST12.;

	INFORMAT sample_dilution $1.;
	FORMAT sample_dilution $1.;

	INFORMAT glucose0_1964 BEST32.;
	FORMAT glucose0_1964 BEST12.;

	INFORMAT glucose5_1964 $1.;
	FORMAT glucose5_1964 $1.;

	INFORMAT glucose10_1964 $1.;
	FORMAT glucose10_1964 $1.;

	INFORMAT glucose15_1964 $1.;
	FORMAT glucose15_1964 $1.;

	INFORMAT glucose20_1964 BEST32.;
	FORMAT glucose20_1964 BEST12.;

	INFORMAT glucose40_1964 BEST32.;
	FORMAT glucose40_1964 BEST12.;

	INFORMAT glucose60_1964 BEST32.;
	FORMAT glucose60_1964 BEST12.;

	INFORMAT glucose80_1964 BEST32.;
	FORMAT glucose80_1964 BEST12.;

	INFORMAT glucose100_1964 BEST32.;
	FORMAT glucose100_1964 BEST12.;

	INFORMAT glucose120_1964 BEST32.;
	FORMAT glucose120_1964 BEST12.;

	INFORMAT glucose0_1977 BEST32.;
	FORMAT glucose0_1977 BEST12.;

	INFORMAT glucose5_1977 BEST32.;
	FORMAT glucose5_1977 BEST12.;

	INFORMAT glucose10_1977 BEST32.;
	FORMAT glucose10_1977 BEST12.;

	INFORMAT glucose15_1977 BEST32.;
	FORMAT glucose15_1977 BEST12.;

	INFORMAT glucose20_1977 BEST32.;
	FORMAT glucose20_1977 BEST12.;

	INFORMAT glucose40_1977 BEST32.;
	FORMAT glucose40_1977 BEST12.;

	INFORMAT glucose60_1977 BEST32.;
	FORMAT glucose60_1977 BEST12.;

	INFORMAT glucose80_1977 BEST32.;
	FORMAT glucose80_1977 BEST12.;

	INFORMAT glucose100_1977 BEST32.;
	FORMAT glucose100_1977 BEST12.;

	INFORMAT glucose120_1977 BEST32.;
	FORMAT glucose120_1977 BEST12.;

	INFORMAT glucose0_2001 BEST32.;
	FORMAT glucose0_2001 BEST12.;

	INFORMAT glucose5_2001 BEST32.;
	FORMAT glucose5_2001 BEST12.;

	INFORMAT glucose10_2001 BEST32.;
	FORMAT glucose10_2001 BEST12.;

	INFORMAT glucose15_2001 BEST32.;
	FORMAT glucose15_2001 BEST12.;

	INFORMAT glucose20_2001 BEST32.;
	FORMAT glucose20_2001 BEST12.;

	INFORMAT glucose40_2001 BEST32.;
	FORMAT glucose40_2001 BEST12.;

	INFORMAT glucose60_2001 BEST32.;
	FORMAT glucose60_2001 BEST12.;

	INFORMAT glucose80_2001 BEST32.;
	FORMAT glucose80_2001 BEST12.;

	INFORMAT glucose100_2001 BEST32.;
	FORMAT glucose100_2001 BEST12.;

	INFORMAT glucose120_2001 BEST32.;
	FORMAT glucose120_2001 BEST12.;

	INFORMAT glucose0 BEST32.;
	FORMAT glucose0 BEST12.;

	INFORMAT glucose0_3cat BEST32.;
	FORMAT glucose0_3cat BEST12.;

	INFORMAT glucose20 BEST32.;
	FORMAT glucose20 BEST12.;

	INFORMAT glucose40 BEST32.;
	FORMAT glucose40 BEST12.;

	INFORMAT glucose60 BEST32.;
	FORMAT glucose60 BEST12.;

	INFORMAT glucose80 BEST32.;
	FORMAT glucose80 BEST12.;

	INFORMAT glucose100 BEST32.;
	FORMAT glucose100 BEST12.;

	INFORMAT glucose120 BEST32.;
	FORMAT glucose120 BEST12.;

	INFORMAT glucose120_3cat BEST32.;
	FORMAT glucose120_3cat BEST12.;

	INFORMAT insulin0 BEST32.;
	FORMAT insulin0 BEST12.;

	INFORMAT insulin5 BEST32.;
	FORMAT insulin5 BEST12.;

	INFORMAT insulin10 BEST32.;
	FORMAT insulin10 BEST12.;

	INFORMAT insulin15 BEST32.;
	FORMAT insulin15 BEST12.;

	INFORMAT insulin20 BEST32.;
	FORMAT insulin20 BEST12.;

	INFORMAT insulin40 BEST32.;
	FORMAT insulin40 BEST12.;

	INFORMAT insulin60 BEST32.;
	FORMAT insulin60 BEST12.;

	INFORMAT insulin80 BEST32.;
	FORMAT insulin80 BEST12.;

	INFORMAT insulin100 BEST32.;
	FORMAT insulin100 BEST12.;

	INFORMAT insulin120 BEST32.;
	FORMAT insulin120 BEST12.;

	INFORMAT hba1c BEST32.;
	FORMAT hba1c BEST12.;

	INFORMAT hba1c3cat BEST32.;
	FORMAT hba1c3cat BEST12.;

	INFORMAT glucose3cat BEST32.;
	FORMAT glucose3cat BEST12.;

	INFORMAT diab3cat BEST32.;
	FORMAT diab3cat BEST12.;

	INPUT
		id_addi
		visit
		gluload
		sample_dilution
		glucose0_1964
		glucose5_1964
		glucose10_1964
		glucose15_1964
		glucose20_1964
		glucose40_1964
		glucose60_1964
		glucose80_1964
		glucose100_1964
		glucose120_1964
		glucose0_1977
		glucose5_1977
		glucose10_1977
		glucose15_1977
		glucose20_1977
		glucose40_1977
		glucose60_1977
		glucose80_1977
		glucose100_1977
		glucose120_1977
		glucose0_2001
		glucose5_2001
		glucose10_2001
		glucose15_2001
		glucose20_2001
		glucose40_2001
		glucose60_2001
		glucose80_2001
		glucose100_2001
		glucose120_2001
		glucose0
		glucose0_3cat
		glucose20
		glucose40
		glucose60
		glucose80
		glucose100
		glucose120
		glucose120_3cat
		insulin0
		insulin5
		insulin10
		insulin15
		insulin20
		insulin40
		insulin60
		insulin80
		insulin100
		insulin120
		hba1c
		hba1c3cat
		glucose3cat
		diab3cat
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "BLSA Visit Number"
		gluload = "Sugar concentration for OGTT (grams)"
		sample_dilution = "Diluation factor"
		glucose0_1964 = "Fasting Glucose 1964-1977 (mg/dl)"
		glucose5_1964 = "OGTT Glucose at 5-mins 1964-1977 (mg/dl)"
		glucose10_1964 = "OGTT Glucose at 10-mins 1964-1977 (mg/dl)"
		glucose15_1964 = "OGTT Glucose at 15-mins 1964-1977 (mg/dl)"
		glucose20_1964 = "OGTT Glucose at 20-mins 1964-1977 (mg/dl)"
		glucose40_1964 = "OGTT Glucose at 40-mins 1964-1977 (mg/dl)"
		glucose60_1964 = "OGTT Glucose at 60-mins 1964-1977 (mg/dl)"
		glucose80_1964 = "OGTT Glucose at 80-mins 1964-1977 (mg/dl)"
		glucose100_1964 = "OGTT Glucose at 100-mins 1964-1977 (mg/dl)"
		glucose120_1964 = "OGTT Glucose at 120-mins 1964-1977 (mg/dl)"
		glucose0_1977 = "Fasting Glucose 1977-2000 (mg/dl)"
		glucose5_1977 = "OGTT Glucose at 5-mins 1977-2000 (mg/dl)"
		glucose10_1977 = "OGTT Glucose at 10-mins 1977-2000 (mg/dl)"
		glucose15_1977 = "OGTT Glucose at 15-mins 1977-2000 (mg/dl)"
		glucose20_1977 = "OGTT Glucose at 20-mins 1977-2000 (mg/dl)"
		glucose40_1977 = "OGTT Glucose at 40-mins 1977-2000 (mg/dl)"
		glucose60_1977 = "OGTT Glucose at 60-mins 1977-2000 (mg/dl)"
		glucose80_1977 = "OGTT Glucose at 80-mins 1977-2000 (mg/dl)"
		glucose100_1977 = "OGTT Glucose at 100-mins 1977-2000 (mg/dl)"
		glucose120_1977 = "OGTT Glucose at 120-mins 1977-2000 (mg/dl)"
		glucose0_2001 = "Fasting Glucose 2001-current (mg/dl)"
		glucose5_2001 = "OGTT Glucose at 5-mins 2001-current (mg/dl)"
		glucose10_2001 = "OGTT Glucose at 10-mins 2001-current (mg/dl)"
		glucose15_2001 = "OGTT Glucose at 15-mins 2001-current (mg/dl)"
		glucose20_2001 = "OGTT Glucose at 20-mins 2001-current (mg/dl)"
		glucose40_2001 = "OGTT Glucose at 40-mins 2001-current (mg/dl)"
		glucose60_2001 = "OGTT Glucose at 60-mins 2001-current (mg/dl)"
		glucose80_2001 = "OGTT Glucose at 80-mins 2001-current (mg/dl)"
		glucose100_2001 = "OGTT Glucose at 100-mins 2001-current (mg/dl)"
		glucose120_2001 = "OGTT Glucose at 120-mins 2001-current (mg/dl)"
		glucose0 = "Fasting Glucose calibrated (mg/dl)"
		glucose0_3cat = "OGTT Glucose Categorization at 0-mins, calibrated (Norm, At Risk, Diab)"
		glucose20 = "OGTT Glucose at 20-mins calibrated (mg/dl)"
		glucose40 = "OGTT Glucose at 40-mins calibrated (mg/dl)"
		glucose60 = "OGTT Glucose at 60-mins calibrated (mg/dl)"
		glucose80 = "OGTT Glucose at 80-mins calibrated (mg/dl)"
		glucose100 = "OGTT Glucose at 100-mins calibrated (mg/dl)"
		glucose120 = "OGTT Glucose at 120-mins calibrated (mg/dl)"
		glucose120_3cat = "OGTT Glucose Categorization at 120-mins, calibrated (Norm, At Risk, Diab)"
		insulin0 = "OGTT Insulin at 0-mins (µU/ml)"
		insulin5 = "OGTT Insulin at 5-mins (µU/ml)"
		insulin10 = "OGTT Insulin at 10-mins (µU/ml)"
		insulin15 = "OGTT Insulin at 15-mins (µU/ml)"
		insulin20 = "OGTT Insulin at 20-mins (µU/ml)"
		insulin40 = "OGTT Insulin at 40-mins (µU/ml)"
		insulin60 = "OGTT Insulin at 60-mins (µU/ml)"
		insulin80 = "OGTT Insulin at 80-mins (µU/ml)"
		insulin100 = "OGTT Insulin at 100-mins (µU/ml)"
		insulin120 = "OGTT Insulin at 120-mins (µU/ml)"
		hba1c = "Plasma Hemoglobin HbA1c (%)"
		hba1c3cat = "Plasma Hemoglobin HbA1c (%) Categorization (Norm, At Risk, Diab)"
		glucose3cat = "Diabetes Categorization (Norm, At Risk, Diab)"
		diab3cat = "Diabetes Categorization (Norm, At Risk, Diab)"
	;
	FORMAT
		glucose0_3cat glucose0_3cat_.
		glucose120_3cat glucose120_3cat_.
		hba1c3cat hba1c3cat_.
		glucose3cat glucose3cat_.
		diab3cat diab3cat_.
	;
RUN;


        DATA der_glucose;
            SET WORK.IMPORT;
        RUN;
        