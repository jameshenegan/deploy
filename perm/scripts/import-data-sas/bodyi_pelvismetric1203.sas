%let path_to_file = '../data-csv/bodyi_pelvismetric1203.csv';
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

	INFORMAT bone_area BEST32.;
	FORMAT bone_area BEST12.;

	INFORMAT bone_mean_intensity BEST32.;
	FORMAT bone_mean_intensity BEST12.;

	INFORMAT bone_std_intensity BEST32.;
	FORMAT bone_std_intensity BEST12.;

	INFORMAT skeletal_muscle_area BEST32.;
	FORMAT skeletal_muscle_area BEST12.;

	INFORMAT skeletal_muscle_mean_intensity BEST32.;
	FORMAT skeletal_muscle_mean_intensity BEST12.;

	INFORMAT skeletal_muscle_std_intensity BEST32.;
	FORMAT skeletal_muscle_std_intensity BEST12.;

	INFORMAT psoas_muscle_area BEST32.;
	FORMAT psoas_muscle_area BEST12.;

	INFORMAT psoas_muscle_mean_intensity BEST32.;
	FORMAT psoas_muscle_mean_intensity BEST12.;

	INFORMAT psoas_muscle_std_intensity BEST32.;
	FORMAT psoas_muscle_std_intensity BEST12.;

	INFORMAT inner_abdominal_wall_area BEST32.;
	FORMAT inner_abdominal_wall_area BEST12.;

	INFORMAT inner_abd_wall_mean_intensity BEST32.;
	FORMAT inner_abd_wall_mean_intensity BEST12.;

	INFORMAT inner_abd_wall_std_intensity BEST32.;
	FORMAT inner_abd_wall_std_intensity BEST12.;

	INFORMAT outer_abdominal_wall_area BEST32.;
	FORMAT outer_abdominal_wall_area BEST12.;

	INFORMAT outer_abd_wall_mean_intensity BEST32.;
	FORMAT outer_abd_wall_mean_intensity BEST12.;

	INFORMAT outer_abd_wall_std_intensity BEST32.;
	FORMAT outer_abd_wall_std_intensity BEST12.;

	INFORMAT subcutaneous_fat_area BEST32.;
	FORMAT subcutaneous_fat_area BEST12.;

	INFORMAT subcutaneous_fat_mean_intensity BEST32.;
	FORMAT subcutaneous_fat_mean_intensity BEST12.;

	INFORMAT subcutaneous_fat_std_intensity BEST32.;
	FORMAT subcutaneous_fat_std_intensity BEST12.;

	INFORMAT visceral_fat_area BEST32.;
	FORMAT visceral_fat_area BEST12.;

	INFORMAT visceral_fat_mean_intensity BEST32.;
	FORMAT visceral_fat_mean_intensity BEST12.;

	INFORMAT visceral_fat_std_intensity BEST32.;
	FORMAT visceral_fat_std_intensity BEST12.;

	INFORMAT body_mask_area BEST32.;
	FORMAT body_mask_area BEST12.;

	INFORMAT body_mask_mean_intensity BEST32.;
	FORMAT body_mask_mean_intensity BEST12.;

	INFORMAT body_mask_std_intensity BEST32.;
	FORMAT body_mask_std_intensity BEST12.;

	INPUT
		id_addi
		visit
		bone_area
		bone_mean_intensity
		bone_std_intensity
		skeletal_muscle_area
		skeletal_muscle_mean_intensity
		skeletal_muscle_std_intensity
		psoas_muscle_area
		psoas_muscle_mean_intensity
		psoas_muscle_std_intensity
		inner_abdominal_wall_area
		inner_abd_wall_mean_intensity
		inner_abd_wall_std_intensity
		outer_abdominal_wall_area
		outer_abd_wall_mean_intensity
		outer_abd_wall_std_intensity
		subcutaneous_fat_area
		subcutaneous_fat_mean_intensity
		subcutaneous_fat_std_intensity
		visceral_fat_area
		visceral_fat_mean_intensity
		visceral_fat_std_intensity
		body_mask_area
		body_mask_mean_intensity
		body_mask_std_intensity
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		bone_area = "Bone Area"
		bone_mean_intensity = "Bone Mean Intensity"
		bone_std_intensity = "Bone Standard Deviation Intensity"
		skeletal_muscle_area = "Skeletal Muscle Area"
		skeletal_muscle_mean_intensity = "Skeletal Muscle Mean Intensity"
		skeletal_muscle_std_intensity = "Skeletal Muscle Standard Deviation Intensity"
		psoas_muscle_area = "Psoas Muscle Area"
		psoas_muscle_mean_intensity = "Psoas Muscle Mean Intensity"
		psoas_muscle_std_intensity = "Psoas Muscle Standard Deviation Intensity"
		inner_abdominal_wall_area = "Inner Abdominal Wall Area (Pelvis)"
		inner_abd_wall_mean_intensity = "Inner Abdominal Wall Mean Intensity (Pelvis)"
		inner_abd_wall_std_intensity = "Inner Abdominal Wall Standard Deviation Intensity (Pelvis)"
		outer_abdominal_wall_area = "Outer Abdominal Wall Area (Pelvis)"
		outer_abd_wall_mean_intensity = "Outer Abdominal Wall Mean Intensity (Pelvis)"
		outer_abd_wall_std_intensity = "Outer Abdominal Wall Standard Deviation Intensity (Pelvis)"
		subcutaneous_fat_area = "Subcutaneous Fat Area (Pelvis)"
		subcutaneous_fat_mean_intensity = "Subcutaneous Fat Mean Intensity (Pelvis)"
		subcutaneous_fat_std_intensity = "Subcutaneous Fat Standard Deviation Intensity (Pelvis)"
		visceral_fat_area = "Visceral Fat Area (Pelvis)"
		visceral_fat_mean_intensity = "Visceral Fat Mean Intensity (Pelvis)"
		visceral_fat_std_intensity = "Visceral Fat Standard Deviation Intensity (Pelvis)"
		body_mask_area = "Body Mask Area (Pelvis)"
		body_mask_mean_intensity = "Body Mask Mean Intensity (Pelvis)"
		body_mask_std_intensity = "Body Mask Standard Deviation Intensity (Pelvis)"
	;
RUN;


        DATA bodyi_pelvismetric1203;
            SET WORK.IMPORT;
        RUN;
        