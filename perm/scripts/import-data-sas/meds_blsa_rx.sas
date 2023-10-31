%let path_to_file = '../data-csv/meds_blsa_rx.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE dose_units_
		1 = 'mg'
		3 = 'Other than mg or cc'
		4 = 'Unspecified'
		2 = 'cc or mL'
		0 = '.'
		5 = '.'
		23 = '.'
	;

	VALUE route_
		1 = 'All p.o. except sublingual'
		4 = 'Eye/nose topicals/sprays'
		5 = 'Other topicals'
		3 = 'Inhaler'
		7 = 'Parenteral'
		6 = 'Suppositories'
		2 = 'Sublingual'
		9 = 'Other/unknown'
		8 = 'Intra-articular'
		0 = '.'
		14 = '.'
	;

	VALUE use_
		1 = 'Regularly'
		2 = 'Occasionally'
		3 = 'Stopped'
		5 = 'Multiple Courses'
		4 = 'Current short term use'
		7 = '.'
		0 = '.'
	;

	VALUE length_of_use_
		4 = 'One to five years'
		5 = 'More than five years'
		1 = 'Less than one month'
		2 = 'One to five months'
		3 = 'Six to eleven months'
		9 = '.'
		7 = '.'
		6 = '.'
		8 = '.'
	;

	VALUE length_of_stopped_
		4 = 'One to five years'
		2 = 'One to five months'
		3 = 'Six to eleven months'
		1 = 'Less than one month'
		5 = 'More than five years'
		6 = '.'
		14 = '.'
		0 = '.'
		13 = '.'
	;

	VALUE reason_stopped_
		2 = 'Not needed'
		1 = 'Completed course'
		3 = 'Side effects'
		4 = 'Lacked efficacy'
		6 = 'Unknown'
		7 = 'Convenience'
		5 = 'Rx expired'
		0 = '.'
	;

	VALUE taken_last_48_hrs_
		1 = 'Yes'
		0 = 'No'
		2 = 'Unsure'
		4 = '.'
		5 = '.'
		3 = '.'
		11 = '.'
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

	INFORMAT drug $72.;
	FORMAT drug $72.;

	INFORMAT dose $20.;
	FORMAT dose $20.;

	INFORMAT dose_units BEST32.;
	FORMAT dose_units BEST12.;

	INFORMAT route BEST32.;
	FORMAT route BEST12.;

	INFORMAT freq_day BEST32.;
	FORMAT freq_day BEST12.;

	INFORMAT freq_week BEST32.;
	FORMAT freq_week BEST12.;

	INFORMAT use BEST32.;
	FORMAT use BEST12.;

	INFORMAT length_of_use BEST32.;
	FORMAT length_of_use BEST12.;

	INFORMAT length_of_stopped BEST32.;
	FORMAT length_of_stopped BEST12.;

	INFORMAT reason_stopped BEST32.;
	FORMAT reason_stopped BEST12.;

	INFORMAT taken_last_48_hrs BEST32.;
	FORMAT taken_last_48_hrs BEST12.;

	INFORMAT irregular BEST32.;
	FORMAT irregular BEST12.;

	INFORMAT dosenote $185.;
	FORMAT dosenote $185.;

	INFORMAT who BEST32.;
	FORMAT who BEST12.;

	INFORMAT atc1 $5.;
	FORMAT atc1 $5.;

	INFORMAT atc2 $5.;
	FORMAT atc2 $5.;

	INFORMAT atc3 $5.;
	FORMAT atc3 $5.;

	INFORMAT atc4 $5.;
	FORMAT atc4 $5.;

	INFORMAT atc5 $5.;
	FORMAT atc5 $5.;

	INFORMAT atc6 $5.;
	FORMAT atc6 $5.;

	INFORMAT atc7 $5.;
	FORMAT atc7 $5.;

	INFORMAT atc8 $5.;
	FORMAT atc8 $5.;

	INFORMAT atc9 $5.;
	FORMAT atc9 $5.;

	INFORMAT atc10 $5.;
	FORMAT atc10 $5.;

	INFORMAT atc11 $1.;
	FORMAT atc11 $1.;

	INFORMAT atc12 $1.;
	FORMAT atc12 $1.;

	INFORMAT atc13 $1.;
	FORMAT atc13 $1.;

	INFORMAT atc14 $1.;
	FORMAT atc14 $1.;

	INFORMAT atc15 $1.;
	FORMAT atc15 $1.;

	INPUT
		id_addi
		visit
		drug
		dose
		dose_units
		route
		freq_day
		freq_week
		use
		length_of_use
		length_of_stopped
		reason_stopped
		taken_last_48_hrs
		irregular
		dosenote
		who
		atc1
		atc2
		atc3
		atc4
		atc5
		atc6
		atc7
		atc8
		atc9
		atc10
		atc11
		atc12
		atc13
		atc14
		atc15
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		drug = "Drug Name"
		dose = "Amount per tablet or other unit"
		dose_units = "Units for the amount"
		route = "How medication is taken"
		freq_day = "Doses per day"
		freq_week = "Doses per week"
		use = "Use"
		length_of_use = "Length of use"
		length_of_stopped = "If stopped, how long ago"
		reason_stopped = "If stopped, reason for stopping"
		taken_last_48_hrs = "Taken in last 48 hours"
		irregular = "Irregular Dosage"
		dosenote = "Dosage Note"
		who = "ATC Code(s) found in WHO file"
		atc1 = "ATC Code 1"
		atc2 = "ATC Code 2"
		atc3 = "ATC Code 3"
		atc4 = "ATC Code 4"
		atc5 = "ATC Code 5"
		atc6 = "ATC Code 6"
		atc7 = "ATC Code 7"
		atc8 = "ATC Code 8"
		atc9 = "ATC Code 9"
		atc10 = "ATC Code 10"
		atc11 = "ATC Code 11"
		atc12 = "ATC Code 12"
		atc13 = "ATC Code 13"
		atc14 = "ATC Code 14"
		atc15 = "ATC Code 15"
	;
	FORMAT
		dose_units dose_units_.
		route route_.
		use use_.
		length_of_use length_of_use_.
		length_of_stopped length_of_stopped_.
		reason_stopped reason_stopped_.
		taken_last_48_hrs taken_last_48_hrs_.
	;
RUN;


        DATA meds_blsa_rx;
            SET WORK.IMPORT;
        RUN;
        