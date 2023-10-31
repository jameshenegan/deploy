%let path_to_file = '../data-csv/der_medicalhx.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE mi_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hf_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE angina_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE cld_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE asthma_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE liver_dz_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hepatitis_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hiv_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ckd_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE stroke_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE tia_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pn_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE htn_hx_ever_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE dm_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE hld_hx_ever_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE vascular_proc_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE cancer_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE arthritis_hx_ever_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE stenosis_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE osteoporosis_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ctd_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE parkinson_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pad_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pvd_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE cataract1_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE cataract2_hx_ever_
		1 = 'Yes'
		0 = 'No'
	;

	VALUE cataract_surg_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ulcer_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE depression_hx_ever_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE covid_hx_ever_
		0 = 'No'
		1 = 'Yes'
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

	INFORMAT mi_hx_ever BEST32.;
	FORMAT mi_hx_ever BEST12.;

	INFORMAT hf_hx_ever BEST32.;
	FORMAT hf_hx_ever BEST12.;

	INFORMAT angina_hx_ever BEST32.;
	FORMAT angina_hx_ever BEST12.;

	INFORMAT cld_hx_ever BEST32.;
	FORMAT cld_hx_ever BEST12.;

	INFORMAT asthma_hx_ever BEST32.;
	FORMAT asthma_hx_ever BEST12.;

	INFORMAT liver_dz_hx_ever BEST32.;
	FORMAT liver_dz_hx_ever BEST12.;

	INFORMAT hepatitis_hx_ever BEST32.;
	FORMAT hepatitis_hx_ever BEST12.;

	INFORMAT hiv_hx_ever BEST32.;
	FORMAT hiv_hx_ever BEST12.;

	INFORMAT ckd_hx_ever BEST32.;
	FORMAT ckd_hx_ever BEST12.;

	INFORMAT stroke_hx_ever BEST32.;
	FORMAT stroke_hx_ever BEST12.;

	INFORMAT tia_hx_ever BEST32.;
	FORMAT tia_hx_ever BEST12.;

	INFORMAT pn_hx_ever BEST32.;
	FORMAT pn_hx_ever BEST12.;

	INFORMAT htn_hx_ever BEST32.;
	FORMAT htn_hx_ever BEST12.;

	INFORMAT dm_hx_ever BEST32.;
	FORMAT dm_hx_ever BEST12.;

	INFORMAT hld_hx_ever BEST32.;
	FORMAT hld_hx_ever BEST12.;

	INFORMAT vascular_proc_hx_ever BEST32.;
	FORMAT vascular_proc_hx_ever BEST12.;

	INFORMAT cancer_hx_ever BEST32.;
	FORMAT cancer_hx_ever BEST12.;

	INFORMAT arthritis_hx_ever BEST32.;
	FORMAT arthritis_hx_ever BEST12.;

	INFORMAT stenosis_hx_ever BEST32.;
	FORMAT stenosis_hx_ever BEST12.;

	INFORMAT osteoporosis_hx_ever BEST32.;
	FORMAT osteoporosis_hx_ever BEST12.;

	INFORMAT ctd_hx_ever BEST32.;
	FORMAT ctd_hx_ever BEST12.;

	INFORMAT parkinson_hx_ever BEST32.;
	FORMAT parkinson_hx_ever BEST12.;

	INFORMAT pad_hx_ever BEST32.;
	FORMAT pad_hx_ever BEST12.;

	INFORMAT pvd_hx_ever BEST32.;
	FORMAT pvd_hx_ever BEST12.;

	INFORMAT cataract1_hx_ever BEST32.;
	FORMAT cataract1_hx_ever BEST12.;

	INFORMAT cataract2_hx_ever BEST32.;
	FORMAT cataract2_hx_ever BEST12.;

	INFORMAT cataract_surg_hx_ever BEST32.;
	FORMAT cataract_surg_hx_ever BEST12.;

	INFORMAT ulcer_hx_ever BEST32.;
	FORMAT ulcer_hx_ever BEST12.;

	INFORMAT depression_hx_ever BEST32.;
	FORMAT depression_hx_ever BEST12.;

	INFORMAT covid_hx_ever BEST32.;
	FORMAT covid_hx_ever BEST12.;

	INPUT
		id_addi
		visit
		mi_hx_ever
		hf_hx_ever
		angina_hx_ever
		cld_hx_ever
		asthma_hx_ever
		liver_dz_hx_ever
		hepatitis_hx_ever
		hiv_hx_ever
		ckd_hx_ever
		stroke_hx_ever
		tia_hx_ever
		pn_hx_ever
		htn_hx_ever
		dm_hx_ever
		hld_hx_ever
		vascular_proc_hx_ever
		cancer_hx_ever
		arthritis_hx_ever
		stenosis_hx_ever
		osteoporosis_hx_ever
		ctd_hx_ever
		parkinson_hx_ever
		pad_hx_ever
		pvd_hx_ever
		cataract1_hx_ever
		cataract2_hx_ever
		cataract_surg_hx_ever
		ulcer_hx_ever
		depression_hx_ever
		covid_hx_ever
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "BLSA Visit Number"
		mi_hx_ever = "Self-Reported History of MI"
		hf_hx_ever = "Self-Reported History of HF"
		angina_hx_ever = "Self-Reported History of Angina"
		cld_hx_ever = "Self-Reported History of CLD"
		asthma_hx_ever = "Self-Reported History of Asthma"
		liver_dz_hx_ever = "Self-Reported History of Liver Disease"
		hepatitis_hx_ever = "Self-Reported History of Hepatitis"
		hiv_hx_ever = "Self-Reported History of HIV/AIDS"
		ckd_hx_ever = "Self-Reported History of CKD"
		stroke_hx_ever = "Self-Reported History of Stroke"
		tia_hx_ever = "Self-Reported History of TIA"
		pn_hx_ever = "Self-Reported History of PN"
		htn_hx_ever = "Self-Reported History of HTN"
		dm_hx_ever = "Self-Reported History of DM"
		hld_hx_ever = "Self-Reported History of HLD"
		vascular_proc_hx_ever = "Self-Reported History of Vascular Procedures"
		cancer_hx_ever = "Self-Reported History of Cancer"
		arthritis_hx_ever = "Self-Reported History of Arthritis"
		stenosis_hx_ever = "Self-Reported History of Spinal Stenosis"
		osteoporosis_hx_ever = "Self-Reported History of Osteoporosis"
		ctd_hx_ever = "Self-Reported History of CTD"
		parkinson_hx_ever = "Self-Reported History of Parkinson"
		pad_hx_ever = "Self-Reported History of PAD"
		pvd_hx_ever = "Self-Reported History of Varicose Veins"
		cataract1_hx_ever = "Self-Reported History of Cataracts"
		cataract2_hx_ever = "Self-Reported History of Cataracts (both eyes)"
		cataract_surg_hx_ever = "Self-Reported History of Cataract Procedures"
		ulcer_hx_ever = "Self-Reported History of Ulcer"
		depression_hx_ever = "Self-Reported History of Depression"
		covid_hx_ever = "Self-Reported History of COVID-19"
	;
	FORMAT
		mi_hx_ever mi_hx_ever_.
		hf_hx_ever hf_hx_ever_.
		angina_hx_ever angina_hx_ever_.
		cld_hx_ever cld_hx_ever_.
		asthma_hx_ever asthma_hx_ever_.
		liver_dz_hx_ever liver_dz_hx_ever_.
		hepatitis_hx_ever hepatitis_hx_ever_.
		hiv_hx_ever hiv_hx_ever_.
		ckd_hx_ever ckd_hx_ever_.
		stroke_hx_ever stroke_hx_ever_.
		tia_hx_ever tia_hx_ever_.
		pn_hx_ever pn_hx_ever_.
		htn_hx_ever htn_hx_ever_.
		dm_hx_ever dm_hx_ever_.
		hld_hx_ever hld_hx_ever_.
		vascular_proc_hx_ever vascular_proc_hx_ever_.
		cancer_hx_ever cancer_hx_ever_.
		arthritis_hx_ever arthritis_hx_ever_.
		stenosis_hx_ever stenosis_hx_ever_.
		osteoporosis_hx_ever osteoporosis_hx_ever_.
		ctd_hx_ever ctd_hx_ever_.
		parkinson_hx_ever parkinson_hx_ever_.
		pad_hx_ever pad_hx_ever_.
		pvd_hx_ever pvd_hx_ever_.
		cataract1_hx_ever cataract1_hx_ever_.
		cataract2_hx_ever cataract2_hx_ever_.
		cataract_surg_hx_ever cataract_surg_hx_ever_.
		ulcer_hx_ever ulcer_hx_ever_.
		depression_hx_ever depression_hx_ever_.
		covid_hx_ever covid_hx_ever_.
	;
RUN;


        DATA der_medicalhx;
            SET WORK.IMPORT;
        RUN;
        