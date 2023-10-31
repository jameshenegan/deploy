%let path_to_file = '../data-csv/cohort_demography.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE age_units_
		1 = 'Years'
	;

	VALUE $sex_
		M = 'Male'
		F = 'Female'
	;

	VALUE race_
		8 = 'Race: Unknown or not reported'
		6 = 'Race: White'
		3 = 'Race: Black or African American'
		1 = 'Race: Hawaiian or Pacific Islander'
		5 = 'Race: Hispanic'
		2 = 'Race: American Indian or Alaskan Native'
		9 = 'Race: Asian'
		7 = 'Race: More than one race'
	;

	VALUE ethnicity_
		0 = 'Not reported / Unknown'
		1 = 'Not Hispanic or Latino'
		2 = 'Hispanic or Latino'
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

	INFORMAT age_at_screening_visit BEST32.;
	FORMAT age_at_screening_visit BEST12.;

	INFORMAT age_units BEST32.;
	FORMAT age_units BEST12.;

	INFORMAT sex $1.;
	FORMAT sex $1.;

	INFORMAT race BEST32.;
	FORMAT race BEST12.;

	INFORMAT ethnicity BEST32.;
	FORMAT ethnicity BEST12.;

	INPUT
		id_addi
		age_at_screening_visit
		age_units
		sex
		race
		ethnicity
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		age_at_screening_visit = "Age at Screening Visit"
		age_units = "Age Units at Screening Visit"
		sex = "Sex given at Screening Visit"
		race = "Race given at Screening Visit"
		ethnicity = "Ethnicity given at Screening Visit"
	;
	FORMAT
		age_units age_units_.
		race race_.
		ethnicity ethnicity_.
		sex $sex_.
	;
RUN;


        DATA cohort_demography;
            SET WORK.IMPORT;
        RUN;
        