%let path_to_file = '../data-csv/der_physicalactivity.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE exercise_
		0 = 'Less than 30 minutes of high intensity exercise in the past two weeks'
		3 = 'More than 150 minutes of high intensity exercise in the past two weeks'
		2 = 'Between 75 and 150 minutes of high intensitiy exercise in the past two weeks'
		1 = 'Between 30 and 75 minutes of high intensity exercise in the past two weeks'
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

	INFORMAT hakcal BEST32.;
	FORMAT hakcal BEST12.;

	INFORMAT totkkwk BEST32.;
	FORMAT totkkwk BEST12.;

	INFORMAT totkcal BEST32.;
	FORMAT totkcal BEST12.;

	INFORMAT highxmin BEST32.;
	FORMAT highxmin BEST12.;

	INFORMAT walktime BEST32.;
	FORMAT walktime BEST12.;

	INFORMAT exercise BEST32.;
	FORMAT exercise BEST12.;

	INPUT
		id_addi
		visit
		hakcal
		totkkwk
		totkcal
		highxmin
		walktime
		exercise
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "BLSA Visit Number"
		hakcal = "calories expended in exercise related activity - Harvard alumni scale"
		totkkwk = "calories per kg expended in all activity"
		totkcal = "calories expended in all activity"
		highxmin = "minutes of vigorous actvity per week including brisk walking"
		walktime = "minutes of any walking per week"
		exercise = "exercise level 0=lt 30 mins and 3=gt 150 mins per week"
	;
	FORMAT
		exercise exercise_.
	;
RUN;


        DATA der_physicalactivity;
            SET WORK.IMPORT;
        RUN;
        