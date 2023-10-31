%let path_to_file = '../data-csv/cog_adrcpathnacc.csv';
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

	INFORMAT cdagedx BEST32.;
	FORMAT cdagedx BEST12.;

	INFORMAT cdageos BEST32.;
	FORMAT cdageos BEST12.;

	INFORMAT cdpos BEST32.;
	FORMAT cdpos BEST12.;

	INFORMAT cdprog BEST32.;
	FORMAT cdprog BEST12.;

	INFORMAT nac1 BEST32.;
	FORMAT nac1 BEST12.;

	INFORMAT nac10 BEST32.;
	FORMAT nac10 BEST12.;

	INFORMAT nac10a BEST32.;
	FORMAT nac10a BEST12.;

	INFORMAT nac11 BEST32.;
	FORMAT nac11 BEST12.;

	INFORMAT nac11a BEST32.;
	FORMAT nac11a BEST12.;

	INFORMAT nac12 BEST32.;
	FORMAT nac12 BEST12.;

	INFORMAT nac12a BEST32.;
	FORMAT nac12a BEST12.;

	INFORMAT nac12a1 BEST32.;
	FORMAT nac12a1 BEST12.;

	INFORMAT nac12a2 BEST32.;
	FORMAT nac12a2 BEST12.;

	INFORMAT nac12a3 BEST32.;
	FORMAT nac12a3 BEST12.;

	INFORMAT nac12a4 BEST32.;
	FORMAT nac12a4 BEST12.;

	INFORMAT nac13 BEST32.;
	FORMAT nac13 BEST12.;

	INFORMAT nac13a BEST32.;
	FORMAT nac13a BEST12.;

	INFORMAT nac14 BEST32.;
	FORMAT nac14 BEST12.;

	INFORMAT nac14a BEST32.;
	FORMAT nac14a BEST12.;

	INFORMAT nac15 BEST32.;
	FORMAT nac15 BEST12.;

	INFORMAT nac15a BEST32.;
	FORMAT nac15a BEST12.;

	INFORMAT nac16 BEST32.;
	FORMAT nac16 BEST12.;

	INFORMAT nac16a BEST32.;
	FORMAT nac16a BEST12.;

	INFORMAT nac17 BEST32.;
	FORMAT nac17 BEST12.;

	INFORMAT nac17a BEST32.;
	FORMAT nac17a BEST12.;

	INFORMAT nac18 BEST32.;
	FORMAT nac18 BEST12.;

	INFORMAT nac18a BEST32.;
	FORMAT nac18a BEST12.;

	INFORMAT nac19 BEST32.;
	FORMAT nac19 BEST12.;

	INFORMAT nac19a BEST32.;
	FORMAT nac19a BEST12.;

	INFORMAT nac2 BEST32.;
	FORMAT nac2 BEST12.;

	INFORMAT nac20 BEST32.;
	FORMAT nac20 BEST12.;

	INFORMAT nac20a BEST32.;
	FORMAT nac20a BEST12.;

	INFORMAT nac21 BEST32.;
	FORMAT nac21 BEST12.;

	INFORMAT nac21a BEST32.;
	FORMAT nac21a BEST12.;

	INFORMAT nac22 BEST32.;
	FORMAT nac22 BEST12.;

	INFORMAT nac22a BEST32.;
	FORMAT nac22a BEST12.;

	INFORMAT nac23 BEST32.;
	FORMAT nac23 BEST12.;

	INFORMAT nac23a BEST32.;
	FORMAT nac23a BEST12.;

	INFORMAT nac24 BEST32.;
	FORMAT nac24 BEST12.;

	INFORMAT nac24a BEST32.;
	FORMAT nac24a BEST12.;

	INFORMAT nac25 BEST32.;
	FORMAT nac25 BEST12.;

	INFORMAT nac25a BEST32.;
	FORMAT nac25a BEST12.;

	INFORMAT nac26 BEST32.;
	FORMAT nac26 BEST12.;

	INFORMAT nac26a BEST32.;
	FORMAT nac26a BEST12.;

	INFORMAT nac27 BEST32.;
	FORMAT nac27 BEST12.;

	INFORMAT nac27a BEST32.;
	FORMAT nac27a BEST12.;

	INFORMAT nac27as $20.;
	FORMAT nac27as $20.;

	INFORMAT nac28 BEST32.;
	FORMAT nac28 BEST12.;

	INFORMAT nac28a BEST32.;
	FORMAT nac28a BEST12.;

	INFORMAT nac29 BEST32.;
	FORMAT nac29 BEST12.;

	INFORMAT nac29a BEST32.;
	FORMAT nac29a BEST12.;

	INFORMAT nac3 BEST32.;
	FORMAT nac3 BEST12.;

	INFORMAT nac30 BEST32.;
	FORMAT nac30 BEST12.;

	INFORMAT nac30a BEST32.;
	FORMAT nac30a BEST12.;

	INFORMAT nac31 BEST32.;
	FORMAT nac31 BEST12.;

	INFORMAT nac31a BEST32.;
	FORMAT nac31a BEST12.;

	INFORMAT nac32 BEST32.;
	FORMAT nac32 BEST12.;

	INFORMAT nac32a BEST32.;
	FORMAT nac32a BEST12.;

	INFORMAT nac33a BEST32.;
	FORMAT nac33a BEST12.;

	INFORMAT nac33aa BEST32.;
	FORMAT nac33aa BEST12.;

	INFORMAT nac33b BEST32.;
	FORMAT nac33b BEST12.;

	INFORMAT nac33bb BEST32.;
	FORMAT nac33bb BEST12.;

	INFORMAT nac33c BEST32.;
	FORMAT nac33c BEST12.;

	INFORMAT nac33cc BEST32.;
	FORMAT nac33cc BEST12.;

	INFORMAT nac33d BEST32.;
	FORMAT nac33d BEST12.;

	INFORMAT nac33dd BEST32.;
	FORMAT nac33dd BEST12.;

	INFORMAT nac33e BEST32.;
	FORMAT nac33e BEST12.;

	INFORMAT nac33ee BEST32.;
	FORMAT nac33ee BEST12.;

	INFORMAT nac33f BEST32.;
	FORMAT nac33f BEST12.;

	INFORMAT nac33ff BEST32.;
	FORMAT nac33ff BEST12.;

	INFORMAT nac33g BEST32.;
	FORMAT nac33g BEST12.;

	INFORMAT nac33gg BEST32.;
	FORMAT nac33gg BEST12.;

	INFORMAT nac33h BEST32.;
	FORMAT nac33h BEST12.;

	INFORMAT nac33hh BEST32.;
	FORMAT nac33hh BEST12.;

	INFORMAT nac33i BEST32.;
	FORMAT nac33i BEST12.;

	INFORMAT nac33ii BEST32.;
	FORMAT nac33ii BEST12.;

	INFORMAT nac33j BEST32.;
	FORMAT nac33j BEST12.;

	INFORMAT nac33jj BEST32.;
	FORMAT nac33jj BEST12.;

	INFORMAT nac33k BEST32.;
	FORMAT nac33k BEST12.;

	INFORMAT nac33kk BEST32.;
	FORMAT nac33kk BEST12.;

	INFORMAT nac33l BEST32.;
	FORMAT nac33l BEST12.;

	INFORMAT nac33ll BEST32.;
	FORMAT nac33ll BEST12.;

	INFORMAT nac34 BEST32.;
	FORMAT nac34 BEST12.;

	INFORMAT nac35 BEST32.;
	FORMAT nac35 BEST12.;

	INFORMAT nac36 BEST32.;
	FORMAT nac36 BEST12.;

	INFORMAT nac37 BEST32.;
	FORMAT nac37 BEST12.;

	INFORMAT nac38 BEST32.;
	FORMAT nac38 BEST12.;

	INFORMAT nac39 $21.;
	FORMAT nac39 $21.;

	INFORMAT nac40 BEST32.;
	FORMAT nac40 BEST12.;

	INFORMAT nac41 BEST32.;
	FORMAT nac41 BEST12.;

	INFORMAT nac4a BEST32.;
	FORMAT nac4a BEST12.;

	INFORMAT nac4b BEST32.;
	FORMAT nac4b BEST12.;

	INFORMAT nac4b1 BEST32.;
	FORMAT nac4b1 BEST12.;

	INFORMAT nac4b2 BEST32.;
	FORMAT nac4b2 BEST12.;

	INFORMAT nac4b3 BEST32.;
	FORMAT nac4b3 BEST12.;

	INFORMAT nac4b4 BEST32.;
	FORMAT nac4b4 BEST12.;

	INFORMAT nac4c BEST32.;
	FORMAT nac4c BEST12.;

	INFORMAT nac4c1 BEST32.;
	FORMAT nac4c1 BEST12.;

	INFORMAT nac4c2 BEST32.;
	FORMAT nac4c2 BEST12.;

	INFORMAT nac4c3 BEST32.;
	FORMAT nac4c3 BEST12.;

	INFORMAT nac4c4 BEST32.;
	FORMAT nac4c4 BEST12.;

	INFORMAT nac4d BEST32.;
	FORMAT nac4d BEST12.;

	INFORMAT nac4d1 BEST32.;
	FORMAT nac4d1 BEST12.;

	INFORMAT nac4d2 BEST32.;
	FORMAT nac4d2 BEST12.;

	INFORMAT nac4d3 BEST32.;
	FORMAT nac4d3 BEST12.;

	INFORMAT nac4d4 BEST32.;
	FORMAT nac4d4 BEST12.;

	INFORMAT nac4e BEST32.;
	FORMAT nac4e BEST12.;

	INFORMAT nac5 BEST32.;
	FORMAT nac5 BEST12.;

	INFORMAT nac5a BEST32.;
	FORMAT nac5a BEST12.;

	INFORMAT nac6 BEST32.;
	FORMAT nac6 BEST12.;

	INFORMAT nac6a BEST32.;
	FORMAT nac6a BEST12.;

	INFORMAT nac7 BEST32.;
	FORMAT nac7 BEST12.;

	INFORMAT nac7a BEST32.;
	FORMAT nac7a BEST12.;

	INFORMAT nac8 BEST32.;
	FORMAT nac8 BEST12.;

	INFORMAT nac8a BEST32.;
	FORMAT nac8a BEST12.;

	INFORMAT nac9 BEST32.;
	FORMAT nac9 BEST12.;

	INFORMAT nac9a BEST32.;
	FORMAT nac9a BEST12.;

	INPUT
		id_addi
		cdagedx
		cdageos
		cdpos
		cdprog
		nac1
		nac10
		nac10a
		nac11
		nac11a
		nac12
		nac12a
		nac12a1
		nac12a2
		nac12a3
		nac12a4
		nac13
		nac13a
		nac14
		nac14a
		nac15
		nac15a
		nac16
		nac16a
		nac17
		nac17a
		nac18
		nac18a
		nac19
		nac19a
		nac2
		nac20
		nac20a
		nac21
		nac21a
		nac22
		nac22a
		nac23
		nac23a
		nac24
		nac24a
		nac25
		nac25a
		nac26
		nac26a
		nac27
		nac27a
		nac27as
		nac28
		nac28a
		nac29
		nac29a
		nac3
		nac30
		nac30a
		nac31
		nac31a
		nac32
		nac32a
		nac33a
		nac33aa
		nac33b
		nac33bb
		nac33c
		nac33cc
		nac33d
		nac33dd
		nac33e
		nac33ee
		nac33f
		nac33ff
		nac33g
		nac33gg
		nac33h
		nac33hh
		nac33i
		nac33ii
		nac33j
		nac33jj
		nac33k
		nac33kk
		nac33l
		nac33ll
		nac34
		nac35
		nac36
		nac37
		nac38
		nac39
		nac40
		nac41
		nac4a
		nac4b
		nac4b1
		nac4b2
		nac4b3
		nac4b4
		nac4c
		nac4c1
		nac4c2
		nac4c3
		nac4c4
		nac4d
		nac4d1
		nac4d2
		nac4d3
		nac4d4
		nac4e
		nac5
		nac5a
		nac6
		nac6a
		nac7
		nac7a
		nac8
		nac8a
		nac9
		nac9a
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		cdagedx = "Age of DX of cog impairment"
		cdageos = "Age of onset of cog impairment"
		cdpos = "Pattern of onset"
		cdprog = "Pattern of progression"
		nac1 = "Responses based on"
		nac10 = "Undetermined etiology"
		nac10a = "Undetermined etiology - If present"
		nac11 = "Frontotemporal dementia"
		nac11a = "Frontotemporal dementia - If present"
		nac12 = "Primary progressive aphasia"
		nac12a = "Primary progressive aphasia - If present"
		nac12a1 = "Progressive nonfluent aphasia (1=present, 0-=absent)"
		nac12a2 = "Semantic dementia (1=present, 0-=absent)"
		nac12a3 = "Semantic dementia - variant (1=present, 0-=absent)"
		nac12a4 = "Other (1=present, 0-=absent)"
		nac13 = "Progressive supranuclear palsy"
		nac13a = "Progressive supranuclear palsy - if present"
		nac14 = "Corticobasal degeneration"
		nac14a = "Corticobasal degeneration - if present"
		nac15 = "Huntington's"
		nac15a = "Huntington's - if present"
		nac16 = "Prion disease"
		nac16a = "Prion disease - if present"
		nac17 = "Cognitive dysfunction meds"
		nac17a = "Cognitive dysfunction meds - if present"
		nac18 = "Cognitive dysfunction medical illness"
		nac18a = "Cognitive dysfunction medical illness - if present"
		nac19 = "Depression"
		nac19a = "Depression - if present"
		nac2 = "Normal cog"
		nac20 = "Other major psychiatric illness"
		nac20a = "Other major psychiatric illness - if present"
		nac21 = "Down's syndrome"
		nac21a = "Down's syndrome - if present"
		nac22 = "Parkinson's disease"
		nac22a = "Parkinson's disease - if present"
		nac23 = "Stroke"
		nac23a = "Stroke - if present"
		nac24 = "Hydrocephalus"
		nac24a = "Hydrocephalus - if present"
		nac25 = "Traumatic brain injury"
		nac25a = "Traumatic brain injury - if present"
		nac26 = "CNS neolasm"
		nac26a = "CNS neolasm - if present"
		nac27 = "Other"
		nac27a = "Other - specify"
		nac27as = "NAC27AS"
		nac28 = "ALS"
		nac28a = "ALS - if present"
		nac29 = "HIV encephalopathy"
		nac29a = "HIV encephalopathy - if present"
		nac3 = "Meet criteria for dementia"
		nac30 = "Hippocampal sclerosis"
		nac30a = "Hippocampal sclerosis - if present"
		nac31 = "Hypoxic/anoxic"
		nac31a = "Hypoxic/anoxic - if present"
		nac32 = "Delirium"
		nac32a = "Delirium - if present"
		nac33a = "Hypertension"
		nac33aa = "Hypertension - if present"
		nac33b = "Heart failure"
		nac33bb = "Heart failure - if present"
		nac33c = "Diabetes"
		nac33cc = "Diabetes - if present"
		nac33d = "COPD"
		nac33dd = "COPD - if present"
		nac33e = "Cancer"
		nac33ee = "Cancer - if present"
		nac33f = "Sleep apnea"
		nac33ff = "Sleep apnea - if present"
		nac33g = "Alcoholism"
		nac33gg = "Alcoholism - if present"
		nac33h = "Drug use disorder"
		nac33hh = "Drug use disorder - if present"
		nac33i = "Anemia"
		nac33ii = "Anemia - if present"
		nac33j = "Arthritis"
		nac33jj = "Arthritis - if present"
		nac33k = "Macular degeneration"
		nac33kk = "Macular degeneration - if present"
		nac33l = "Other psychiatric disorder"
		nac33ll = "Other psychiatric disorder - if present"
		nac34 = "NAC34"
		nac35 = "NAC35"
		nac36 = "NAC36"
		nac37 = "NAC37"
		nac38 = "NAC38"
		nac39 = "NAC39"
		nac40 = "NAC40"
		nac41 = "NAC41"
		nac4a = "Amnestic MCI - impairment only"
		nac4b = "Amnestic MCI - domains"
		nac4b1 = "NAC4B1"
		nac4b2 = "NAC4B2"
		nac4b3 = "NAC4B3"
		nac4b4 = "NAC4B4"
		nac4c = "Non-Amnestic MCI - single"
		nac4c1 = "NAC4C1"
		nac4c2 = "NAC4C2"
		nac4c3 = "NAC4C3"
		nac4c4 = "NAC4C4"
		nac4d = "Non-Amnestic MCI - multi"
		nac4d1 = "NAC4D1"
		nac4d2 = "NAC4D2"
		nac4d3 = "NAC4D3"
		nac4d4 = "NAC4D4"
		nac4e = "Impaired, not MCI"
		nac5 = "Prob AD"
		nac5a = "Prob AD - if present"
		nac6 = "Possible AD"
		nac6a = "Possible AD - If present"
		nac7 = "Demenia w/ Lewy bodies"
		nac7a = "Demenia w/ Lewy bodies - If present"
		nac8 = "Vascular dementia"
		nac8a = "Vascular dementia - If present"
		nac9 = "Alcohol dementia"
		nac9a = "Alcohol dementia - If present"
	;
RUN;


        DATA cog_adrcpathnacc;
            SET WORK.IMPORT;
        RUN;
        