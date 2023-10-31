%let path_to_file = '../data-csv/inst_biodex.csv';
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

	INFORMAT contract $7.;
	FORMAT contract $7.;

	INFORMAT mode $4.;
	FORMAT mode $4.;

	INFORMAT joint $4.;
	FORMAT joint $4.;

	INFORMAT pattern $7.;
	FORMAT pattern $7.;

	INFORMAT protocol $20.;
	FORMAT protocol $20.;

	INFORMAT side $5.;
	FORMAT side $5.;

	INFORMAT get BEST32.;
	FORMAT get BEST12.;

	INFORMAT acctime_awy BEST32.;
	FORMAT acctime_awy BEST12.;

	INFORMAT acctime_twd BEST32.;
	FORMAT acctime_twd BEST12.;

	INFORMAT avepwr_awy BEST32.;
	FORMAT avepwr_awy BEST12.;

	INFORMAT avepwr_twd BEST32.;
	FORMAT avepwr_twd BEST12.;

	INFORMAT cv_awy BEST32.;
	FORMAT cv_awy BEST12.;

	INFORMAT cv_twd BEST32.;
	FORMAT cv_twd BEST12.;

	INFORMAT dectime_awy BEST32.;
	FORMAT dectime_awy BEST12.;

	INFORMAT dectime_twd BEST32.;
	FORMAT dectime_twd BEST12.;

	INFORMAT maxavepktq_awy BEST32.;
	FORMAT maxavepktq_awy BEST12.;

	INFORMAT maxavepktq_twd BEST32.;
	FORMAT maxavepktq_twd BEST12.;

	INFORMAT maxrepwk_awy BEST32.;
	FORMAT maxrepwk_awy BEST12.;

	INFORMAT maxrepwkrep_awy BEST32.;
	FORMAT maxrepwkrep_awy BEST12.;

	INFORMAT maxrepwkrep_twd BEST32.;
	FORMAT maxrepwkrep_twd BEST12.;

	INFORMAT maxrepwk_twd BEST32.;
	FORMAT maxrepwk_twd BEST12.;

	INFORMAT maxrom BEST32.;
	FORMAT maxrom BEST12.;

	INFORMAT peaktq_awy BEST32.;
	FORMAT peaktq_awy BEST12.;

	INFORMAT peaktq_awy_nm BEST32.;
	FORMAT peaktq_awy_nm BEST12.;

	INFORMAT peaktq_bw_awy BEST32.;
	FORMAT peaktq_bw_awy BEST12.;

	INFORMAT peaktq_bw_twd BEST32.;
	FORMAT peaktq_bw_twd BEST12.;

	INFORMAT peaktq_twd BEST32.;
	FORMAT peaktq_twd BEST12.;

	INFORMAT peaktq_twd_nm BEST32.;
	FORMAT peaktq_twd_nm BEST12.;

	INFORMAT posnpktq_awy BEST32.;
	FORMAT posnpktq_awy BEST12.;

	INFORMAT posnpktq_twd BEST32.;
	FORMAT posnpktq_twd BEST12.;

	INFORMAT referral $21.;
	FORMAT referral $21.;

	INFORMAT reps BEST32.;
	FORMAT reps BEST12.;

	INFORMAT set_num BEST32.;
	FORMAT set_num BEST12.;

	INFORMAT spd_awy BEST32.;
	FORMAT spd_awy BEST12.;

	INFORMAT spd_twd BEST32.;
	FORMAT spd_twd BEST12.;

	INFORMAT timepktq_awy BEST32.;
	FORMAT timepktq_awy BEST12.;

	INFORMAT timepktq_twd BEST32.;
	FORMAT timepktq_twd BEST12.;

	INFORMAT totwork_awy BEST32.;
	FORMAT totwork_awy BEST12.;

	INFORMAT totwork_twd BEST32.;
	FORMAT totwork_twd BEST12.;

	INFORMAT tqat_awy BEST32.;
	FORMAT tqat_awy BEST12.;

	INFORMAT tqat_twd BEST32.;
	FORMAT tqat_twd BEST12.;

	INFORMAT tqin_awy BEST32.;
	FORMAT tqin_awy BEST12.;

	INFORMAT tqin_twd BEST32.;
	FORMAT tqin_twd BEST12.;

	INFORMAT weight_biodex BEST32.;
	FORMAT weight_biodex BEST12.;

	INFORMAT wkf3rd_awy BEST32.;
	FORMAT wkf3rd_awy BEST12.;

	INFORMAT wkf3rd_twd BEST32.;
	FORMAT wkf3rd_twd BEST12.;

	INFORMAT wkl3rd_awy BEST32.;
	FORMAT wkl3rd_awy BEST12.;

	INFORMAT wkl3rd_twd BEST32.;
	FORMAT wkl3rd_twd BEST12.;

	INFORMAT work_bw_away BEST32.;
	FORMAT work_bw_away BEST12.;

	INFORMAT work_bw_twd BEST32.;
	FORMAT work_bw_twd BEST12.;

	INFORMAT workfat_awy BEST32.;
	FORMAT workfat_awy BEST12.;

	INFORMAT workfat_twd BEST32.;
	FORMAT workfat_twd BEST12.;

	INPUT
		id_addi
		visit
		contract
		mode
		joint
		pattern
		protocol
		side
		get
		acctime_awy
		acctime_twd
		avepwr_awy
		avepwr_twd
		cv_awy
		cv_twd
		dectime_awy
		dectime_twd
		maxavepktq_awy
		maxavepktq_twd
		maxrepwk_awy
		maxrepwkrep_awy
		maxrepwkrep_twd
		maxrepwk_twd
		maxrom
		peaktq_awy
		peaktq_awy_nm
		peaktq_bw_awy
		peaktq_bw_twd
		peaktq_twd
		peaktq_twd_nm
		posnpktq_awy
		posnpktq_twd
		referral
		reps
		set_num
		spd_awy
		spd_twd
		timepktq_awy
		timepktq_twd
		totwork_awy
		totwork_twd
		tqat_awy
		tqat_twd
		tqin_awy
		tqin_twd
		weight_biodex
		wkf3rd_awy
		wkf3rd_twd
		wkl3rd_awy
		wkl3rd_twd
		work_bw_away
		work_bw_twd
		workfat_awy
		workfat_twd
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		contract = "muscle_activation: Type of muscle activation that causes tension on your muscle as it shortens. Allows you to generation enough force to move an object. (concentric, agonist eccentric)."
		mode = "Exercise: type of exercise given within biodex protocol (ISOM,ISOk)"
		joint = "Joint_tested: Joints that are tested. Knee is standard. "
		pattern = "Motion: Motion of joint/muscle moving forward or back. defined as EXT/FLX in data."
		protocol = ""
		side = "side of test: which joint side is being tested "
		get = "Gravity Effect Torque"
		acctime_awy = "Acceleration Time Away"
		acctime_twd = "Accerleration Time Toward"
		avepwr_awy = "Average Power Away"
		avepwr_twd = "Average Power Toward"
		cv_awy = "Coefficient of Variation Away"
		cv_twd = "Coefficient of Variation Toward"
		dectime_awy = "Deceleration Time Away"
		dectime_twd = "Deceleration Time Toward"
		maxavepktq_awy = "Maximum Average Peak Torque Away"
		maxavepktq_twd = "Maximum Average Peak Torque Toward"
		maxrepwk_awy = "Maximum Repitition of Total Work Away"
		maxrepwkrep_awy = "Maximum Work Repitition Number Away"
		maxrepwkrep_twd = "Maximum Repitition of Total Work Toward"
		maxrepwk_twd = "Maximum Work Repitition Number Toward"
		maxrom = "Maximum Range of Motion"
		peaktq_awy = "Peak Torque Away (ft-lbs)"
		peaktq_awy_nm = "Peak Torque Away (newton-meters)"
		peaktq_bw_awy = ""
		peaktq_bw_twd = ""
		peaktq_twd = "Peak Torque Toward (ft-lbs)"
		peaktq_twd_nm = "Peak Torque Toward (newton-meters)"
		posnpktq_awy = "Angle of Peak Torque Away"
		posnpktq_twd = "Angle of Peak Torque Toward"
		referral = "Protocol number: field used for tester to enter in protocol number"
		reps = "Number of Repititions"
		set_num = ""
		spd_awy = "Speed Away"
		spd_twd = "Speed Toward"
		timepktq_awy = "Time to Peak Torque Away"
		timepktq_twd = "Time to Peak Torque Toward"
		totwork_awy = "Total Work Away"
		totwork_twd = "Total Work Toward"
		tqat_awy = ""
		tqat_twd = ""
		tqin_awy = ""
		tqin_twd = ""
		weight_biodex = ""
		wkf3rd_awy = "Work First Third Away"
		wkf3rd_twd = "Work First Third Toward"
		wkl3rd_awy = "Work Last Third Away"
		wkl3rd_twd = "Work Last Third Toward"
		work_bw_away = ""
		work_bw_twd = ""
		workfat_awy = "Work Fatigue Away"
		workfat_twd = "Work Fatigue Toward"
	;
RUN;


        DATA inst_biodex;
            SET WORK.IMPORT;
        RUN;
        