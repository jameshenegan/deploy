%let path_to_file = '../data-csv/der_physicalperformance.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE nwalk_
		1 = 'Yes'
		0 = 'No'
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

	INFORMAT r6mtime BEST32.;
	FORMAT r6mtime BEST12.;

	INFORMAT rapidgaitspeed BEST32.;
	FORMAT rapidgaitspeed BEST12.;

	INFORMAT gaitspeed BEST32.;
	FORMAT gaitspeed BEST12.;

	INFORMAT sppb_gs BEST32.;
	FORMAT sppb_gs BEST12.;

	INFORMAT sppb_cs BEST32.;
	FORMAT sppb_cs BEST12.;

	INFORMAT sppb_sb BEST32.;
	FORMAT sppb_sb BEST12.;

	INFORMAT sppb BEST32.;
	FORMAT sppb BEST12.;

	INFORMAT gs_ratio BEST32.;
	FORMAT gs_ratio BEST12.;

	INFORMAT cs5pace BEST32.;
	FORMAT cs5pace BEST12.;

	INFORMAT cs10pace BEST32.;
	FORMAT cs10pace BEST12.;

	INFORMAT cs_ratio BEST32.;
	FORMAT cs_ratio BEST12.;

	INFORMAT nwalk BEST32.;
	FORMAT nwalk BEST12.;

	INFORMAT nwalktime BEST32.;
	FORMAT nwalktime BEST12.;

	INFORMAT nwspeed BEST32.;
	FORMAT nwspeed BEST12.;

	INFORMAT nw_ratio BEST32.;
	FORMAT nw_ratio BEST12.;

	INFORMAT ststime BEST32.;
	FORMAT ststime BEST12.;

	INFORMAT ftstime BEST32.;
	FORMAT ftstime BEST12.;

	INFORMAT slstime BEST32.;
	FORMAT slstime BEST12.;

	INFORMAT totsbtime BEST32.;
	FORMAT totsbtime BEST12.;

	INFORMAT sb_ratio BEST32.;
	FORMAT sb_ratio BEST12.;

	INFORMAT habcppb BEST32.;
	FORMAT habcppb BEST12.;

	INPUT
		id_addi
		visit
		r6mtime
		rapidgaitspeed
		gaitspeed
		sppb_gs
		sppb_cs
		sppb_sb
		sppb
		gs_ratio
		cs5pace
		cs10pace
		cs_ratio
		nwalk
		nwalktime
		nwspeed
		nw_ratio
		ststime
		ftstime
		slstime
		totsbtime
		sb_ratio
		habcppb
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "BLSA Visit Number"
		r6mtime = "6 meter walk time (sec)"
		rapidgaitspeed = "Rapid gait speed (m/s)"
		gaitspeed = "Usual gait speed (m/s)"
		sppb_gs = "SPPB - gait speed score"
		sppb_cs = "SPPB - chair stand score"
		sppb_sb = "SPPB - standing balance score"
		sppb = "SPPB - score"
		gs_ratio = "Expanded SPPB - Gait Speed Ratio"
		cs5pace = "SPPB - 5 chair stand speed"
		cs10pace = "SPPB - 10 chair stand speed"
		cs_ratio = "Expanded SPPB - Chair Stand Ratio"
		nwalk = "Successfully completed narrow walk"
		nwalktime = "Narrow walk time in seconds"
		nwspeed = "Narrow walk speed (m/s)"
		nw_ratio = "Expanded SPPB - Narrow Walk Ratio"
		ststime = "Semi-tandem stand time in seconds"
		ftstime = "Full-tandem time in seconds"
		slstime = "Single leg stand time in seconds"
		totsbtime = "Total standing balance time (seconds)"
		sb_ratio = "Expanded SPPB - Standing Balance Ratio"
		habcppb = "Expanded SPPB - score"
	;
	FORMAT
		nwalk nwalk_.
	;
RUN;


        DATA der_physicalperformance;
            SET WORK.IMPORT;
        RUN;
        