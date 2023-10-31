%let path_to_file = '../data-csv/oc_visualfield.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE vissc1_visfie_
		3 = 'For both distance and near'
		1 = 'Near only (eg reading)'
		0 = 'Never'
		2 = 'Distance only (eg driving watching TV)'
	;

	VALUE vissc2_visfie_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE vissc2a_visfie_
		1 = 'Glasses'
		2 = 'Contact Lenses'
	;

	VALUE vissc2a1_visfie_
		4 = 'Progressives'
		2 = 'Bifocal'
		1 = 'Single vision'
		3 = 'Trifocals'
	;

	VALUE vissc2b_visfie_
		1 = 'Soft'
		2 = 'RGP (hard)'
		8 = 'Unknown'
	;

	VALUE vissc2b1_visfie_
		1 = 'Distance'
		2 = 'Bifocal'
		3 = 'Monovision'
	;

	VALUE vissc2b2_visfie_
		8 = 'Unknown'
		2 = 'Left'
		1 = 'Right'
	;

	VALUE visvfdis_visfie_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE visvfdon_visfie_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE visvfrnd_visfie_
		555 = 'Physical problems (*includes if participant has marked discrepancy of vision between eyes'
		999 = 'Technical problems'
		888 = 'Refused'
		666 = 'Physical and cognitive'
		777 = 'Cognitive problems'
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

	INFORMAT crf_version_visfie $8.;
	FORMAT crf_version_visfie $8.;

	INFORMAT vissc1_visfie BEST32.;
	FORMAT vissc1_visfie BEST12.;

	INFORMAT vissc2_visfie BEST32.;
	FORMAT vissc2_visfie BEST12.;

	INFORMAT vissc2a_visfie BEST32.;
	FORMAT vissc2a_visfie BEST12.;

	INFORMAT vissc2a1_visfie BEST32.;
	FORMAT vissc2a1_visfie BEST12.;

	INFORMAT vissc2b_visfie BEST32.;
	FORMAT vissc2b_visfie BEST12.;

	INFORMAT vissc2b1_visfie BEST32.;
	FORMAT vissc2b1_visfie BEST12.;

	INFORMAT vissc2b2_visfie BEST32.;
	FORMAT vissc2b2_visfie BEST12.;

	INFORMAT visvfdis_visfie BEST32.;
	FORMAT visvfdis_visfie BEST12.;

	INFORMAT vissc3a1_visfie BEST32.;
	FORMAT vissc3a1_visfie BEST12.;

	INFORMAT vissc3a2_visfie BEST32.;
	FORMAT vissc3a2_visfie BEST12.;

	INFORMAT vissc3a3_visfie BEST32.;
	FORMAT vissc3a3_visfie BEST12.;

	INFORMAT vissc3a4_visfie BEST32.;
	FORMAT vissc3a4_visfie BEST12.;

	INFORMAT vissc3b1_visfie BEST32.;
	FORMAT vissc3b1_visfie BEST12.;

	INFORMAT vissc3b2_visfie BEST32.;
	FORMAT vissc3b2_visfie BEST12.;

	INFORMAT vissc3b3_visfie BEST32.;
	FORMAT vissc3b3_visfie BEST12.;

	INFORMAT vissc3b4_visfie BEST32.;
	FORMAT vissc3b4_visfie BEST12.;

	INFORMAT vissc3c_visfie BEST32.;
	FORMAT vissc3c_visfie BEST12.;

	INFORMAT visvfdon_visfie BEST32.;
	FORMAT visvfdon_visfie BEST12.;

	INFORMAT visvfrnd_visfie BEST32.;
	FORMAT visvfrnd_visfie BEST12.;

	INFORMAT auto_id_visfie BEST32.;
	FORMAT auto_id_visfie BEST12.;

	INFORMAT testerid_visfie BEST32.;
	FORMAT testerid_visfie BEST12.;

	INPUT
		id_addi
		visit
		crf_version_visfie
		vissc1_visfie
		vissc2_visfie
		vissc2a_visfie
		vissc2a1_visfie
		vissc2b_visfie
		vissc2b1_visfie
		vissc2b2_visfie
		visvfdis_visfie
		vissc3a1_visfie
		vissc3a2_visfie
		vissc3a3_visfie
		vissc3a4_visfie
		vissc3b1_visfie
		vissc3b2_visfie
		vissc3b3_visfie
		vissc3b4_visfie
		vissc3c_visfie
		visvfdon_visfie
		visvfrnd_visfie
		auto_id_visfie
		testerid_visfie
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_visfie = "CRF Version"
		vissc1_visfie = "Do you wear glasses or contact lenses"
		vissc2_visfie = "Did you bring your glasses"
		vissc2a_visfie = "Type of glasses or contact lenses"
		vissc2a1_visfie = "Glasses"
		vissc2b_visfie = "Contact Lenses"
		vissc2b1_visfie = "Contact lenses for distance bifocal or monovision"
		vissc2b2_visfie = "Which eye distance"
		visvfdis_visfie = "Does participant have marked discrepency of vision between eyes"
		vissc3a1_visfie = "Right eye sphere Rx"
		vissc3a2_visfie = "Right eye cylinder Rx"
		vissc3a3_visfie = "Right eye Axis Rx"
		vissc3a4_visfie = "Right eye sphere Rx final"
		vissc3b1_visfie = "Left eye sphere Rx"
		vissc3b2_visfie = "Left eye cylinder Rx"
		vissc3b3_visfie = "Left eye Axis Rx"
		vissc3b4_visfie = "Left eye sphere Rx final"
		vissc3c_visfie = "Near add"
		visvfdon_visfie = "Was visual field assessment completed"
		visvfrnd_visfie = "Why visual field not done"
		auto_id_visfie = "Unique Teleform Number"
		testerid_visfie = "Tester ID"
	;
	FORMAT
		vissc1_visfie vissc1_visfie_.
		vissc2_visfie vissc2_visfie_.
		vissc2a_visfie vissc2a_visfie_.
		vissc2a1_visfie vissc2a1_visfie_.
		vissc2b_visfie vissc2b_visfie_.
		vissc2b1_visfie vissc2b1_visfie_.
		vissc2b2_visfie vissc2b2_visfie_.
		visvfdis_visfie visvfdis_visfie_.
		visvfdon_visfie visvfdon_visfie_.
		visvfrnd_visfie visvfrnd_visfie_.
	;
RUN;


        DATA oc_visualfield;
            SET WORK.IMPORT;
        RUN;
        