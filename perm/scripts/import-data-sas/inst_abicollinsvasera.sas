%let path_to_file = '../data-csv/inst_abicollinsvasera.csv';
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

	INFORMAT instrument $7.;
	FORMAT instrument $7.;

	INFORMAT aid BEST32.;
	FORMAT aid BEST12.;

	INFORMAT r_abi BEST32.;
	FORMAT r_abi BEST12.;

	INFORMAT l_abi BEST32.;
	FORMAT l_abi BEST12.;

	INFORMAT hr BEST32.;
	FORMAT hr BEST12.;

	INFORMAT rb_sys BEST32.;
	FORMAT rb_sys BEST12.;

	INFORMAT rb_mean BEST32.;
	FORMAT rb_mean BEST12.;

	INFORMAT rb_dia BEST32.;
	FORMAT rb_dia BEST12.;

	INFORMAT lb_sys BEST32.;
	FORMAT lb_sys BEST12.;

	INFORMAT lb_mean BEST32.;
	FORMAT lb_mean BEST12.;

	INFORMAT lb_dia BEST32.;
	FORMAT lb_dia BEST12.;

	INFORMAT ra_sys BEST32.;
	FORMAT ra_sys BEST12.;

	INFORMAT ra_mean BEST32.;
	FORMAT ra_mean BEST12.;

	INFORMAT ra_dia BEST32.;
	FORMAT ra_dia BEST12.;

	INFORMAT la_sys BEST32.;
	FORMAT la_sys BEST12.;

	INFORMAT la_mean BEST32.;
	FORMAT la_mean BEST12.;

	INFORMAT la_dia BEST32.;
	FORMAT la_dia BEST12.;

	INPUT
		id_addi
		visit
		instrument
		aid
		r_abi
		l_abi
		hr
		rb_sys
		rb_mean
		rb_dia
		lb_sys
		lb_mean
		lb_dia
		ra_sys
		ra_mean
		ra_dia
		la_sys
		la_mean
		la_dia
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		instrument = "Instrumentation Device used to take measurement"
		aid = "Auto-incrementing ID from Instrumentation Device"
		r_abi = "Right ankle-brachial index"
		l_abi = "Left ankle-brachial index"
		hr = "Heart Rate"
		rb_sys = "Right brachial Systolic Blood Pressure "
		rb_mean = "Right brachial Mean Arterial Pressure"
		rb_dia = "Right brachial Diastolic Blood Pressure"
		lb_sys = "Left brachial Systolic Blood Pressure "
		lb_mean = "Left brachial Mean Arterial Pressure"
		lb_dia = "Left brachial Diastolic Blood Pressure"
		ra_sys = "Right ankle Systolic Blood Pressure "
		ra_mean = "Right ankle Mean Arterial Pressure"
		ra_dia = "Right ankle Diastolic Blood Pressure"
		la_sys = "Left ankle Systolic Blood Pressure "
		la_mean = "Left ankle Mean Arterial Pressure"
		la_dia = "Left ankle Diastolic Blood Pressure"
	;
RUN;


        DATA inst_abicollinsvasera;
            SET WORK.IMPORT;
        RUN;
        