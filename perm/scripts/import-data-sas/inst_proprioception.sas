%let path_to_file = '../data-csv/inst_proprioception.csv';
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

	INFORMAT position_01 BEST32.;
	FORMAT position_01 BEST12.;

	INFORMAT position_02 BEST32.;
	FORMAT position_02 BEST12.;

	INFORMAT position_03 BEST32.;
	FORMAT position_03 BEST12.;

	INFORMAT relex_maxt BEST32.;
	FORMAT relex_maxt BEST12.;

	INFORMAT relex_meant BEST32.;
	FORMAT relex_meant BEST12.;

	INFORMAT thr1_yn BEST32.;
	FORMAT thr1_yn BEST12.;

	INFORMAT thr2_yn BEST32.;
	FORMAT thr2_yn BEST12.;

	INFORMAT thr3_yn BEST32.;
	FORMAT thr3_yn BEST12.;

	INFORMAT thr4_yn BEST32.;
	FORMAT thr4_yn BEST12.;

	INFORMAT threshold_01_pf BEST32.;
	FORMAT threshold_01_pf BEST12.;

	INFORMAT threshold_02_df BEST32.;
	FORMAT threshold_02_df BEST12.;

	INFORMAT threshold_03_df BEST32.;
	FORMAT threshold_03_df BEST12.;

	INFORMAT threshold_04_pf BEST32.;
	FORMAT threshold_04_pf BEST12.;

	INFORMAT track01_max_diff_minus BEST32.;
	FORMAT track01_max_diff_minus BEST12.;

	INFORMAT track01_max_diff_plus BEST32.;
	FORMAT track01_max_diff_plus BEST12.;

	INFORMAT track01_mean_diff BEST32.;
	FORMAT track01_mean_diff BEST12.;

	INFORMAT track02_max_diff_minus BEST32.;
	FORMAT track02_max_diff_minus BEST12.;

	INFORMAT track02_max_diff_plus BEST32.;
	FORMAT track02_max_diff_plus BEST12.;

	INFORMAT track02_mean_diff BEST32.;
	FORMAT track02_mean_diff BEST12.;

	INFORMAT tracking_01 BEST32.;
	FORMAT tracking_01 BEST12.;

	INFORMAT tracking_02 BEST32.;
	FORMAT tracking_02 BEST12.;

	INPUT
		id_addi
		visit
		position_01
		position_02
		position_03
		relex_maxt
		relex_meant
		thr1_yn
		thr2_yn
		thr3_yn
		thr4_yn
		threshold_01_pf
		threshold_02_df
		threshold_03_df
		threshold_04_pf
		track01_max_diff_minus
		track01_max_diff_plus
		track01_mean_diff
		track02_max_diff_minus
		track02_max_diff_plus
		track02_mean_diff
		tracking_01
		tracking_02
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		position_01 = "Ankle Position 01"
		position_02 = "Ankle Position 02"
		position_03 = "Ankle Position 03"
		relex_maxt = "Ankle Relex MaxT"
		relex_meant = "Ankle Relex MeanT"
		thr1_yn = "Ankle Thr1 YN"
		thr2_yn = "Ankle Thr2 YN"
		thr3_yn = "Ankle Thr3 YN"
		thr4_yn = "Ankle Thr4 YN"
		threshold_01_pf = "Ankle Threshold 01 Plantar Flexion"
		threshold_02_df = "Ankle Threshold 02 Dorsiflexion"
		threshold_03_df = "Ankle Threshold 03 Dorsiflexion"
		threshold_04_pf = "Ankle Threshold 04 Plantar Flexion"
		track01_max_diff_minus = "Ankle track01 max diff plus"
		track01_max_diff_plus = "Ankle track01 max diff plus"
		track01_mean_diff = "Ankle track01 mean diff"
		track02_max_diff_minus = "Ankle track02 max diff minus"
		track02_max_diff_plus = "Ankle track02 max diff plus"
		track02_mean_diff = "Ankle track02 max diff minus"
		tracking_01 = "Ankle track02 max diff minus"
		tracking_02 = "Ankle Tracking 02"
	;
RUN;


        DATA inst_proprioception;
            SET WORK.IMPORT;
        RUN;
        