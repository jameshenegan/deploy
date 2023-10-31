%let path_to_file = '../data-csv/der_cognition.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE cogn_status_
		0 = 'Normal'
		1 = 'MCI'
		2 = 'Dementia'
		3 = 'Impaired Not-MCI/Dem'
	;

	VALUE last_cogn_status_
		0 = 'Normal'
		2 = 'Dementia'
		1 = 'MCI'
		3 = 'Impaired Not-MCI/Dem'
	;

	VALUE last_cogn_status_dementia_
		0 = 'Non-Dementia'
		1 = 'Dementia'
	;

	VALUE last_cogn_status_alzdis_
		0 = 'non-AD'
		1 = 'Dementia due to Alzheimers'
	;

	VALUE last_cogn_status_type1_
		0 = 'Normal'
		2 = 'Probable AD'
		4 = 'Vascular dementia'
		3 = 'Possible AD'
		9 = 'Unspecified'
		5 = 'Consistent w/ AD'
		8 = 'PD'
		14 = 'Dementia w/ lewy body'
		6 = 'Depression'
		17 = 'Vascular without dementia'
		10 = 'Other primary DX'
		18 = 'Other Dementia'
		15 = 'Frontotemporal dementia'
		7 = 'Alcohol abuse'
		1 = 'Definite AD'
		11 = 'Other secondary DX'
		12 = 'Normal pressure hydrocephalus'
		13 = 'Hippocampal sclerosis'
		19 = 'Unknown'
	;

	VALUE last_cogn_status_type2_
		0 = 'Normal'
		1 = 'Definite AD'
		2 = 'Probable AD'
		3 = 'Possible AD'
		4 = 'Vascular dementia'
		5 = 'Consistent w/ AD'
		6 = 'Depression'
		7 = 'Alcohol abuse'
		8 = 'PD'
		9 = 'Unspecified'
		10 = 'Other primary DX'
		11 = 'Other secondary DX'
		12 = 'Normal pressure hydrocephalus'
		13 = 'Hippocampal sclerosis'
		14 = 'Dementia w/ lewy body'
		15 = 'Frontotemporal dementia'
		17 = 'Vascular without dementia'
		18 = 'Other Dementia'
		19 = 'Unknown'
	;

	VALUE last_cogn_status_caseconf_
		0 = 'Participant has never been case-conferenced'
		1 = 'Participant has been case-conferenced'
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

	INFORMAT cogn_status BEST32.;
	FORMAT cogn_status BEST12.;

	INFORMAT last_cogn_status BEST32.;
	FORMAT last_cogn_status BEST12.;

	INFORMAT last_cogn_status_dementia BEST32.;
	FORMAT last_cogn_status_dementia BEST12.;

	INFORMAT last_cogn_status_alzdis BEST32.;
	FORMAT last_cogn_status_alzdis BEST12.;

	INFORMAT last_cogn_status_type1 BEST32.;
	FORMAT last_cogn_status_type1 BEST12.;

	INFORMAT last_cogn_status_type2 BEST32.;
	FORMAT last_cogn_status_type2 BEST12.;

	INFORMAT last_cogn_status_caseconf BEST32.;
	FORMAT last_cogn_status_caseconf BEST12.;

	INPUT
		id_addi
		visit
		cogn_status
		last_cogn_status
		last_cogn_status_dementia
		last_cogn_status_alzdis
		last_cogn_status_type1
		last_cogn_status_type2
		last_cogn_status_caseconf
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "BLSA Visit Number"
		cogn_status = "4-level Cognitive Status at visit"
		last_cogn_status = "4-level Cognitive Status at last case conference"
		last_cogn_status_dementia = "Dementia diagnosis indicator at last case conference"
		last_cogn_status_alzdis = "Alzheimers Disease (AD) diagnosis at last case conference"
		last_cogn_status_type1 = "19-Level Primary DX Category at last case conference"
		last_cogn_status_type2 = "19-Level Secondary DX Category at last case conference"
		last_cogn_status_caseconf = "Indicator of Case Conferencing for Cognitive Status Determination"
	;
	FORMAT
		cogn_status cogn_status_.
		last_cogn_status last_cogn_status_.
		last_cogn_status_dementia last_cogn_status_dementia_.
		last_cogn_status_alzdis last_cogn_status_alzdis_.
		last_cogn_status_type1 last_cogn_status_type1_.
		last_cogn_status_type2 last_cogn_status_type2_.
		last_cogn_status_caseconf last_cogn_status_caseconf_.
	;
RUN;


        DATA der_cognition;
            SET WORK.IMPORT;
        RUN;
        