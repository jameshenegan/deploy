%let path_to_file = '../data-csv/der_cohort.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE visitmonth_
		6 = 'June'
		8 = 'August'
		3 = 'March'
		5 = 'May'
		7 = 'July'
		10 = 'October'
		4 = 'April'
		9 = 'September'
		11 = 'November'
		1 = 'January'
		2 = 'February'
		12 = 'December'
	;

	VALUE visittype_
		1 = 'Clinical'
		2 = 'Home'
		3 = 'Clinical + Home Split Visit'
	;

	VALUE homevisit_
		0 = 'Clinic Visit'
		1 = 'Home Visit'
	;

	VALUE laststatus_
		2 = 'Deceased'
		1 = 'On Study'
		3 = 'Withdrawn'
		4 = 'Terminated'
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

	INFORMAT visitmonth BEST32.;
	FORMAT visitmonth BEST12.;

	INFORMAT visityear BEST32.;
	FORMAT visityear BEST12.;

	INFORMAT daysfromv1 BEST32.;
	FORMAT daysfromv1 BEST12.;

	INFORMAT yearsfromv1 BEST32.;
	FORMAT yearsfromv1 BEST12.;

	INFORMAT yearsfromprevvisit BEST32.;
	FORMAT yearsfromprevvisit BEST12.;

	INFORMAT visitseq BEST32.;
	FORMAT visitseq BEST12.;

	INFORMAT numvisits BEST32.;
	FORMAT numvisits BEST12.;

	INFORMAT visittype BEST32.;
	FORMAT visittype BEST12.;

	INFORMAT homevisit BEST32.;
	FORMAT homevisit BEST12.;

	INFORMAT visitduration BEST32.;
	FORMAT visitduration BEST12.;

	INFORMAT laststatus BEST32.;
	FORMAT laststatus BEST12.;

	INFORMAT v1tostatusdays BEST32.;
	FORMAT v1tostatusdays BEST12.;

	INPUT
		id_addi
		visit
		visitmonth
		visityear
		daysfromv1
		yearsfromv1
		yearsfromprevvisit
		visitseq
		numvisits
		visittype
		homevisit
		visitduration
		laststatus
		v1tostatusdays
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "BLSA Visit Number"
		visitmonth = "Month of Visit"
		visityear = "Year of Visit"
		daysfromv1 = "Days Since Visit 1 Baseline"
		yearsfromv1 = "Years Since Visit 1 Baseline"
		yearsfromprevvisit = "Years Since Previous Visit"
		visitseq = "Sequential Visit Number"
		numvisits = "Number of Visits"
		visittype = "Type of Visit"
		homevisit = "Home Visit Indicator"
		visitduration = "Visit Encounter Duration"
		laststatus = "Last Known Status"
		v1tostatusdays = "Days from Visit 1 to Last Identified Study Status Date"
	;
	FORMAT
		visitmonth visitmonth_.
		visittype visittype_.
		homevisit homevisit_.
		laststatus laststatus_.
	;
RUN;


        DATA der_cohort;
            SET WORK.IMPORT;
        RUN;
        