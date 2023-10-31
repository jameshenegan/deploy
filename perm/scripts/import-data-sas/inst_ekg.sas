%let path_to_file = '../data-csv/inst_ekg.csv';
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

	INFORMAT vent BEST32.;
	FORMAT vent BEST12.;

	INFORMAT pr BEST32.;
	FORMAT pr BEST12.;

	INFORMAT qrs BEST32.;
	FORMAT qrs BEST12.;

	INFORMAT qt BEST32.;
	FORMAT qt BEST12.;

	INFORMAT qtc BEST32.;
	FORMAT qtc BEST12.;

	INFORMAT pacemaker $2.;
	FORMAT pacemaker $2.;

	INFORMAT dig_version $6.;
	FORMAT dig_version $6.;

	INPUT
		id_addi
		visit
		vent
		pr
		qrs
		qt
		qtc
		pacemaker
		dig_version
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		vent = "Heart Rate"
		pr = "PR Interval time (ms)"
		qrs = "QRS Complex time (ms)"
		qt = "QT Interval time (ms)"
		qtc = "QT Interval time (ms) corrected for heart rate"
		pacemaker = "Pacemaker"
		dig_version = "dig_version"
	;
RUN;


        DATA inst_ekg;
            SET WORK.IMPORT;
        RUN;
        