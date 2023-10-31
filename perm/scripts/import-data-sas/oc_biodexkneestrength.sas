%let path_to_file = '../data-csv/oc_biodexkneestrength.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE bks001_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
	;

	VALUE bks002_
		0 = 'No'
		8 = "Don't know"
		1 = 'Yes'
	;

	VALUE bks003_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
	;

	VALUE bks004_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
	;

	VALUE bks004a_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
	;

	VALUE bks005_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
	;

	VALUE bks005a_
		2 = 'Left'
		3 = 'Both'
		1 = 'Right'
		8 = "Don't know"
	;

	VALUE bks006_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
	;

	VALUE bks006a_
		2 = 'Left'
		1 = 'Right'
		8 = "Don't know"
	;

	VALUE bks007_
		0 = 'No'
		1 = 'Yes'
		8 = "Don't know"
	;

	VALUE bks007a_
		3 = 'Both'
		1 = 'Right'
		2 = 'Left'
		8 = "Don't know"
	;

	VALUE bks008_
		4 = 'Both'
		1 = 'Right'
		3 = 'First time'
		8 = "Don't know"
		2 = 'Left'
	;

	VALUE bks009_
		0 = 'No test both sides'
		1 = 'Right test Left only'
		2 = 'Left test Right only'
		3 = 'Both Do not test'
		8 = "Don't know Go to Biodex exam"
	;

	VALUE bks024_
		3 = 'Kin-com Right Kin-com Left Biodex Right'
		1 = 'Biodex Right Kin-com Left Kin-com right'
		4 = 'Kin--com Left Kin-com Right Biodex Left'
		2 = 'Biodex Left Kin-com Right Kin-com Left'
	;

	VALUE bks011a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE bks011b_
		3 = '3'
		2 = '2'
		1 = '1'
		0 = '0'
		4 = '4+'
	;

	VALUE bks011c_
		3 = '3'
		0 = '0'
		1 = '1'
		2 = '2'
		4 = '4+'
	;

	VALUE bks011d_
		1 = 'Ineligible'
		3 = 'No Tester'
		7 = 'Refused'
		4 = 'Time'
		2 = 'Technical'
		8 = "Don't know"
	;

	VALUE bks012a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE bks012b_
		3 = '3'
		2 = '2'
		1 = '1'
		0 = '0'
		4 = '4+'
	;

	VALUE bks012c_
		3 = '3'
		0 = '0'
		2 = '2'
		1 = '1'
		4 = '4+'
	;

	VALUE bks012d_
		1 = 'Ineligible'
		3 = 'No Tester'
		7 = 'Refused'
		4 = 'Time'
		2 = 'Technical'
		8 = "Don't know"
	;

	VALUE bks013a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE bks013b_
		3 = '3'
		0 = '0'
		2 = '2'
		1 = '1'
		4 = '4+'
	;

	VALUE bks013c_
		3 = '3'
		0 = '0'
		2 = '2'
		1 = '1'
		4 = '4+'
	;

	VALUE bks013d_
		1 = 'Ineligible'
		7 = 'Refused'
		3 = 'No Tester'
		4 = 'Time'
		2 = 'Technical'
		8 = "Don't know"
	;

	VALUE bks021a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE bks021b_
		3 = '3'
		0 = '0'
		1 = '1'
		2 = '2'
		4 = '4+'
	;

	VALUE bks021c_
		3 = '3'
		2 = '2'
		4 = '4+'
		0 = '0'
		1 = '1'
	;

	VALUE bks021d_
		1 = 'Ineligible'
		7 = 'Refused'
		3 = 'No Tester'
		4 = 'Time'
		2 = 'Technical'
		8 = "Don't know"
	;

	VALUE bks022a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE bks022b_
		3 = '3'
		1 = '1'
		2 = '2'
		0 = '0'
		4 = '4+'
	;

	VALUE bks022c_
		3 = '3'
		0 = '0'
		1 = '1'
		2 = '2'
		4 = '4+'
	;

	VALUE bks022d_
		1 = 'Ineligible'
		3 = 'No Tester'
		7 = 'Refused'
		4 = 'Time'
		2 = 'Technical'
		8 = "Don't know"
	;

	VALUE bks023a_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE bks023b_
		3 = '3'
		0 = '0'
		1 = '1'
		2 = '2'
		4 = '4+'
	;

	VALUE bks023c_
		3 = '3'
		0 = '0'
		1 = '1'
		2 = '2'
		4 = '4+'
	;

	VALUE bks023d_
		1 = 'Ineligible'
		3 = 'No Tester'
		7 = 'Refused'
		2 = 'Technical'
		4 = 'Time'
		8 = "Don't know"
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

	INFORMAT crf_version_bioknestr $8.;
	FORMAT crf_version_bioknestr $8.;

	INFORMAT bks001 BEST32.;
	FORMAT bks001 BEST12.;

	INFORMAT bks002 BEST32.;
	FORMAT bks002 BEST12.;

	INFORMAT bks003 BEST32.;
	FORMAT bks003 BEST12.;

	INFORMAT bks004 BEST32.;
	FORMAT bks004 BEST12.;

	INFORMAT bks004a BEST32.;
	FORMAT bks004a BEST12.;

	INFORMAT bks005 BEST32.;
	FORMAT bks005 BEST12.;

	INFORMAT bks005a BEST32.;
	FORMAT bks005a BEST12.;

	INFORMAT bks006 BEST32.;
	FORMAT bks006 BEST12.;

	INFORMAT bks006a BEST32.;
	FORMAT bks006a BEST12.;

	INFORMAT bks007 BEST32.;
	FORMAT bks007 BEST12.;

	INFORMAT bks007a BEST32.;
	FORMAT bks007a BEST12.;

	INFORMAT bks008 BEST32.;
	FORMAT bks008 BEST12.;

	INFORMAT bks009 BEST32.;
	FORMAT bks009 BEST12.;

	INFORMAT bks024 BEST32.;
	FORMAT bks024 BEST12.;

	INFORMAT bks010a BEST32.;
	FORMAT bks010a BEST12.;

	INFORMAT bks010b BEST32.;
	FORMAT bks010b BEST12.;

	INFORMAT bks010c BEST32.;
	FORMAT bks010c BEST12.;

	INFORMAT bks011a BEST32.;
	FORMAT bks011a BEST12.;

	INFORMAT bks011b BEST32.;
	FORMAT bks011b BEST12.;

	INFORMAT bks011c BEST32.;
	FORMAT bks011c BEST12.;

	INFORMAT bks011d BEST32.;
	FORMAT bks011d BEST12.;

	INFORMAT bks012a BEST32.;
	FORMAT bks012a BEST12.;

	INFORMAT bks012b BEST32.;
	FORMAT bks012b BEST12.;

	INFORMAT bks012c BEST32.;
	FORMAT bks012c BEST12.;

	INFORMAT bks012d BEST32.;
	FORMAT bks012d BEST12.;

	INFORMAT bks013a BEST32.;
	FORMAT bks013a BEST12.;

	INFORMAT bks013b BEST32.;
	FORMAT bks013b BEST12.;

	INFORMAT bks013c BEST32.;
	FORMAT bks013c BEST12.;

	INFORMAT bks013d BEST32.;
	FORMAT bks013d BEST12.;

	INFORMAT bks020a BEST32.;
	FORMAT bks020a BEST12.;

	INFORMAT bks020b BEST32.;
	FORMAT bks020b BEST12.;

	INFORMAT bks020c BEST32.;
	FORMAT bks020c BEST12.;

	INFORMAT bks021a BEST32.;
	FORMAT bks021a BEST12.;

	INFORMAT bks021b BEST32.;
	FORMAT bks021b BEST12.;

	INFORMAT bks021c BEST32.;
	FORMAT bks021c BEST12.;

	INFORMAT bks021d BEST32.;
	FORMAT bks021d BEST12.;

	INFORMAT bks022a BEST32.;
	FORMAT bks022a BEST12.;

	INFORMAT bks022b BEST32.;
	FORMAT bks022b BEST12.;

	INFORMAT bks022c BEST32.;
	FORMAT bks022c BEST12.;

	INFORMAT bks022d BEST32.;
	FORMAT bks022d BEST12.;

	INFORMAT bks023a BEST32.;
	FORMAT bks023a BEST12.;

	INFORMAT bks023b BEST32.;
	FORMAT bks023b BEST12.;

	INFORMAT bks023c BEST32.;
	FORMAT bks023c BEST12.;

	INFORMAT bks023d BEST32.;
	FORMAT bks023d BEST12.;

	INFORMAT auto_id_bioknestr BEST32.;
	FORMAT auto_id_bioknestr BEST12.;

	INFORMAT testerid_bioknestr BEST32.;
	FORMAT testerid_bioknestr BEST12.;

	INFORMAT testerid_1_bioknestr BEST32.;
	FORMAT testerid_1_bioknestr BEST12.;

	INFORMAT testerid_2_bioknestr BEST32.;
	FORMAT testerid_2_bioknestr BEST12.;

	INPUT
		id_addi
		visit
		crf_version_bioknestr
		bks001
		bks002
		bks003
		bks004
		bks004a
		bks005
		bks005a
		bks006
		bks006a
		bks007
		bks007a
		bks008
		bks009
		bks024
		bks010a
		bks010b
		bks010c
		bks011a
		bks011b
		bks011c
		bks011d
		bks012a
		bks012b
		bks012c
		bks012d
		bks013a
		bks013b
		bks013c
		bks013d
		bks020a
		bks020b
		bks020c
		bks021a
		bks021b
		bks021c
		bks021d
		bks022a
		bks022b
		bks022c
		bks022d
		bks023a
		bks023b
		bks023c
		bks023d
		auto_id_bioknestr
		testerid_bioknestr
		testerid_1_bioknestr
		testerid_2_bioknestr
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		crf_version_bioknestr = "CRF Version"
		bks001 = "Does BP during PE exceed 220/115"
		bks002 = "From DXA testing is bone mineral density T score of either hip more than four standard deviations below the population meal or less than 0.5g/cm-squared"
		bks003 = "Ever been told you had aneurysm in the brain"
		bks004 = "Told you had a cerebral hemmorage in the last 6 months"
		bks004a = "Past year had low back pain that limited activity for 10 days"
		bks005 = "Have had knee surgery"
		bks005a = "Surgery on right left or both"
		bks006 = "Had an injury that made one leg weaker than the other"
		bks006a = "Which leg is stronger"
		bks007 = "Difficult to bend or straighten knee"
		bks007a = "Which knee difficult to bend or straighten"
		bks008 = "Prior year which leg tested"
		bks009 = "Pain that stopped you from pushing hard"
		bks024 = "Randomization list"
		bks010a = "Right seat bottom depth"
		bks010b = "Right lever arm"
		bks010c = "Right limb weight"
		bks011a = "Right leg concentric test YN"
		bks011b = "Right leg concentric trials at 30 degree"
		bks011c = "Right leg concentric trials at 180 degree"
		bks011d = "Right leg concentric RND"
		bks012a = "Right leg eccentric test YN"
		bks012b = "Right leg eccentric trials at 30 degree"
		bks012c = "Right leg eccentric trials at 180 degree"
		bks012d = "Right leg eccentric RND"
		bks013a = "Right leg Isometric test YN"
		bks013b = "Right leg Isometric trials at 120 degree"
		bks013c = "Right leg Isometric trials at 140 degree"
		bks013d = "Right leg Isometric RND"
		bks020a = "Left seat bottom depth"
		bks020b = "Left lever arm"
		bks020c = "Left limb weight"
		bks021a = "Left leg concentric test YN"
		bks021b = "Left leg concentric trials at 30 degree"
		bks021c = "Left leg concentric trials at 180 degree"
		bks021d = "Left leg concentric RND"
		bks022a = "Left leg eccentric test YN"
		bks022b = "Left leg eccentric trials at 30 degree"
		bks022c = "Left leg eccentric trials at 180 degree"
		bks022d = "Left leg eccentric RND"
		bks023a = "Left leg Isometric test YN"
		bks023b = "Left leg Isometric trials at 120 degree"
		bks023c = "Left leg Isometric trials at 140 degree"
		bks023d = "Left leg Isometric RND"
		auto_id_bioknestr = "Unique Teleform Number"
		testerid_bioknestr = "Tester ID"
		testerid_1_bioknestr = "Tester ID 1"
		testerid_2_bioknestr = "Tester ID 2"
	;
	FORMAT
		bks001 bks001_.
		bks002 bks002_.
		bks003 bks003_.
		bks004 bks004_.
		bks004a bks004a_.
		bks005 bks005_.
		bks005a bks005a_.
		bks006 bks006_.
		bks006a bks006a_.
		bks007 bks007_.
		bks007a bks007a_.
		bks008 bks008_.
		bks009 bks009_.
		bks024 bks024_.
		bks011a bks011a_.
		bks011b bks011b_.
		bks011c bks011c_.
		bks011d bks011d_.
		bks012a bks012a_.
		bks012b bks012b_.
		bks012c bks012c_.
		bks012d bks012d_.
		bks013a bks013a_.
		bks013b bks013b_.
		bks013c bks013c_.
		bks013d bks013d_.
		bks021a bks021a_.
		bks021b bks021b_.
		bks021c bks021c_.
		bks021d bks021d_.
		bks022a bks022a_.
		bks022b bks022b_.
		bks022c bks022c_.
		bks022d bks022d_.
		bks023a bks023a_.
		bks023b bks023b_.
		bks023c bks023c_.
		bks023d bks023d_.
	;
RUN;


        DATA oc_biodexkneestrength;
            SET WORK.IMPORT;
        RUN;
        