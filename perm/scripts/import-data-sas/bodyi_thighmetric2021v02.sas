%let path_to_file = '../data-csv/bodyi_thighmetric2021v02.csv';
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

	INFORMAT cort_bone_area_mm2_left_1 BEST32.;
	FORMAT cort_bone_area_mm2_left_1 BEST12.;

	INFORMAT cort_bone_area_mm2_left_2 BEST32.;
	FORMAT cort_bone_area_mm2_left_2 BEST12.;

	INFORMAT cort_bone_area_mm2_right_1 BEST32.;
	FORMAT cort_bone_area_mm2_right_1 BEST12.;

	INFORMAT cort_bone_area_mm2_right_2 BEST32.;
	FORMAT cort_bone_area_mm2_right_2 BEST12.;

	INFORMAT cort_bone_mean_int_hu_left_1 BEST32.;
	FORMAT cort_bone_mean_int_hu_left_1 BEST12.;

	INFORMAT cort_bone_mean_int_hu_left_2 BEST32.;
	FORMAT cort_bone_mean_int_hu_left_2 BEST12.;

	INFORMAT cort_bone_mean_int_hu_right_1 BEST32.;
	FORMAT cort_bone_mean_int_hu_right_1 BEST12.;

	INFORMAT cort_bone_mean_int_hu_right_2 BEST32.;
	FORMAT cort_bone_mean_int_hu_right_2 BEST12.;

	INFORMAT cort_bone_std_int_hu_left_1 BEST32.;
	FORMAT cort_bone_std_int_hu_left_1 BEST12.;

	INFORMAT cort_bone_std_int_hu_left_2 BEST32.;
	FORMAT cort_bone_std_int_hu_left_2 BEST12.;

	INFORMAT cort_bone_std_int_hu_right_1 BEST32.;
	FORMAT cort_bone_std_int_hu_right_1 BEST12.;

	INFORMAT cort_bone_std_int_hu_right_2 BEST32.;
	FORMAT cort_bone_std_int_hu_right_2 BEST12.;

	INFORMAT in_bone_mean_int_hu_left_1 BEST32.;
	FORMAT in_bone_mean_int_hu_left_1 BEST12.;

	INFORMAT in_bone_mean_int_hu_left_2 BEST32.;
	FORMAT in_bone_mean_int_hu_left_2 BEST12.;

	INFORMAT in_bone_mean_int_hu_right_1 BEST32.;
	FORMAT in_bone_mean_int_hu_right_1 BEST12.;

	INFORMAT in_bone_mean_int_hu_right_2 BEST32.;
	FORMAT in_bone_mean_int_hu_right_2 BEST12.;

	INFORMAT in_bone_sd_intensity_hu_left_1 BEST32.;
	FORMAT in_bone_sd_intensity_hu_left_1 BEST12.;

	INFORMAT in_bone_sd_intensity_hu_left_2 BEST32.;
	FORMAT in_bone_sd_intensity_hu_left_2 BEST12.;

	INFORMAT in_bone_sd_intensity_hu_right_1 BEST32.;
	FORMAT in_bone_sd_intensity_hu_right_1 BEST12.;

	INFORMAT in_bone_sd_intensity_hu_right_2 BEST32.;
	FORMAT in_bone_sd_intensity_hu_right_2 BEST12.;

	INFORMAT inner_diameter_mm_left_1 BEST32.;
	FORMAT inner_diameter_mm_left_1 BEST12.;

	INFORMAT inner_diameter_mm_left_2 BEST32.;
	FORMAT inner_diameter_mm_left_2 BEST12.;

	INFORMAT inner_diameter_mm_right_1 BEST32.;
	FORMAT inner_diameter_mm_right_1 BEST12.;

	INFORMAT inner_diameter_mm_right_2 BEST32.;
	FORMAT inner_diameter_mm_right_2 BEST12.;

	INFORMAT intermusc_fat_area_mm2_left_1 BEST32.;
	FORMAT intermusc_fat_area_mm2_left_1 BEST12.;

	INFORMAT intermusc_fat_area_mm2_left_2 BEST32.;
	FORMAT intermusc_fat_area_mm2_left_2 BEST12.;

	INFORMAT intermusc_fat_area_mm2_right_1 BEST32.;
	FORMAT intermusc_fat_area_mm2_right_1 BEST12.;

	INFORMAT intermusc_fat_area_mm2_right_2 BEST32.;
	FORMAT intermusc_fat_area_mm2_right_2 BEST12.;

	INFORMAT internal_bone_area_mm2_left_1 BEST32.;
	FORMAT internal_bone_area_mm2_left_1 BEST12.;

	INFORMAT internal_bone_area_mm2_left_2 BEST32.;
	FORMAT internal_bone_area_mm2_left_2 BEST12.;

	INFORMAT internal_bone_area_mm2_right_1 BEST32.;
	FORMAT internal_bone_area_mm2_right_1 BEST12.;

	INFORMAT internal_bone_area_mm2_right_2 BEST32.;
	FORMAT internal_bone_area_mm2_right_2 BEST12.;

	INFORMAT intrmsc_fat_mean_int_hu_left_1 BEST32.;
	FORMAT intrmsc_fat_mean_int_hu_left_1 BEST12.;

	INFORMAT intrmsc_fat_mean_int_hu_left_2 BEST32.;
	FORMAT intrmsc_fat_mean_int_hu_left_2 BEST12.;

	INFORMAT intrmsc_fat_mean_int_hu_right_1 BEST32.;
	FORMAT intrmsc_fat_mean_int_hu_right_1 BEST12.;

	INFORMAT intrmsc_fat_mean_int_hu_right_2 BEST32.;
	FORMAT intrmsc_fat_mean_int_hu_right_2 BEST12.;

	INFORMAT intrmsc_fat_sd_int_left_1 BEST32.;
	FORMAT intrmsc_fat_sd_int_left_1 BEST12.;

	INFORMAT intrmsc_fat_sd_int_left_2 BEST32.;
	FORMAT intrmsc_fat_sd_int_left_2 BEST12.;

	INFORMAT intrmsc_fat_sd_int_right_1 BEST32.;
	FORMAT intrmsc_fat_sd_int_right_1 BEST12.;

	INFORMAT intrmsc_fat_sd_int_right_2 BEST32.;
	FORMAT intrmsc_fat_sd_int_right_2 BEST12.;

	INFORMAT max_cort_bone_thick_mm_left_1 BEST32.;
	FORMAT max_cort_bone_thick_mm_left_1 BEST12.;

	INFORMAT max_cort_bone_thick_mm_left_2 BEST32.;
	FORMAT max_cort_bone_thick_mm_left_2 BEST12.;

	INFORMAT max_cort_bone_thick_mm_right_1 BEST32.;
	FORMAT max_cort_bone_thick_mm_right_1 BEST12.;

	INFORMAT max_cort_bone_thick_mm_right_2 BEST32.;
	FORMAT max_cort_bone_thick_mm_right_2 BEST12.;

	INFORMAT mean_cort_bone_thick_mm_left_1 BEST32.;
	FORMAT mean_cort_bone_thick_mm_left_1 BEST12.;

	INFORMAT mean_cort_bone_thick_mm_left_2 BEST32.;
	FORMAT mean_cort_bone_thick_mm_left_2 BEST12.;

	INFORMAT mean_cort_bone_thick_mm_right_1 BEST32.;
	FORMAT mean_cort_bone_thick_mm_right_1 BEST12.;

	INFORMAT mean_cort_bone_thick_mm_right_2 BEST32.;
	FORMAT mean_cort_bone_thick_mm_right_2 BEST12.;

	INFORMAT min_cor_bone_thick_mm_left_1 BEST32.;
	FORMAT min_cor_bone_thick_mm_left_1 BEST12.;

	INFORMAT min_cor_bone_thick_mm_left_2 BEST32.;
	FORMAT min_cor_bone_thick_mm_left_2 BEST12.;

	INFORMAT min_cor_bone_thick_mm_right_1 BEST32.;
	FORMAT min_cor_bone_thick_mm_right_1 BEST12.;

	INFORMAT min_cor_bone_thick_mm_right_2 BEST32.;
	FORMAT min_cor_bone_thick_mm_right_2 BEST12.;

	INFORMAT muscle_area_mm2_left_1 BEST32.;
	FORMAT muscle_area_mm2_left_1 BEST12.;

	INFORMAT muscle_area_mm2_left_2 BEST32.;
	FORMAT muscle_area_mm2_left_2 BEST12.;

	INFORMAT muscle_area_mm2_right_1 BEST32.;
	FORMAT muscle_area_mm2_right_1 BEST12.;

	INFORMAT muscle_area_mm2_right_2 BEST32.;
	FORMAT muscle_area_mm2_right_2 BEST12.;

	INFORMAT muscle_mean_int_hu_left_1 BEST32.;
	FORMAT muscle_mean_int_hu_left_1 BEST12.;

	INFORMAT muscle_mean_int_hu_left_2 BEST32.;
	FORMAT muscle_mean_int_hu_left_2 BEST12.;

	INFORMAT muscle_mean_int_hu_right_1 BEST32.;
	FORMAT muscle_mean_int_hu_right_1 BEST12.;

	INFORMAT muscle_mean_int_hu_right_2 BEST32.;
	FORMAT muscle_mean_int_hu_right_2 BEST12.;

	INFORMAT muscle_std_intensity_left_1 BEST32.;
	FORMAT muscle_std_intensity_left_1 BEST12.;

	INFORMAT muscle_std_intensity_left_2 BEST32.;
	FORMAT muscle_std_intensity_left_2 BEST12.;

	INFORMAT muscle_std_intensity_right_1 BEST32.;
	FORMAT muscle_std_intensity_right_1 BEST12.;

	INFORMAT muscle_std_intensity_right_2 BEST32.;
	FORMAT muscle_std_intensity_right_2 BEST12.;

	INFORMAT outer_diameter_mm_left_1 BEST32.;
	FORMAT outer_diameter_mm_left_1 BEST12.;

	INFORMAT outer_diameter_mm_left_2 BEST32.;
	FORMAT outer_diameter_mm_left_2 BEST12.;

	INFORMAT outer_diameter_mm_right_1 BEST32.;
	FORMAT outer_diameter_mm_right_1 BEST12.;

	INFORMAT outer_diameter_mm_right_2 BEST32.;
	FORMAT outer_diameter_mm_right_2 BEST12.;

	INFORMAT sd_cort_bone_thick_left_1 BEST32.;
	FORMAT sd_cort_bone_thick_left_1 BEST12.;

	INFORMAT sd_cort_bone_thick_left_2 BEST32.;
	FORMAT sd_cort_bone_thick_left_2 BEST12.;

	INFORMAT sd_cort_bone_thick_right_1 BEST32.;
	FORMAT sd_cort_bone_thick_right_1 BEST12.;

	INFORMAT sd_cort_bone_thick_right_2 BEST32.;
	FORMAT sd_cort_bone_thick_right_2 BEST12.;

	INFORMAT subcut_fat_area_mm2_left_1 BEST32.;
	FORMAT subcut_fat_area_mm2_left_1 BEST12.;

	INFORMAT subcut_fat_area_mm2_left_2 BEST32.;
	FORMAT subcut_fat_area_mm2_left_2 BEST12.;

	INFORMAT subcut_fat_area_mm2_right_1 BEST32.;
	FORMAT subcut_fat_area_mm2_right_1 BEST12.;

	INFORMAT subcut_fat_area_mm2_right_2 BEST32.;
	FORMAT subcut_fat_area_mm2_right_2 BEST12.;

	INFORMAT subcut_fat_mean_int_hu_left_1 BEST32.;
	FORMAT subcut_fat_mean_int_hu_left_1 BEST12.;

	INFORMAT subcut_fat_mean_int_hu_left_2 BEST32.;
	FORMAT subcut_fat_mean_int_hu_left_2 BEST12.;

	INFORMAT subcut_fat_mean_int_hu_right_1 BEST32.;
	FORMAT subcut_fat_mean_int_hu_right_1 BEST12.;

	INFORMAT subcut_fat_mean_int_hu_right_2 BEST32.;
	FORMAT subcut_fat_mean_int_hu_right_2 BEST12.;

	INFORMAT subcut_fat_sd_int_left_1 BEST32.;
	FORMAT subcut_fat_sd_int_left_1 BEST12.;

	INFORMAT subcut_fat_sd_int_left_2 BEST32.;
	FORMAT subcut_fat_sd_int_left_2 BEST12.;

	INFORMAT subcut_fat_sd_int_right_1 BEST32.;
	FORMAT subcut_fat_sd_int_right_1 BEST12.;

	INFORMAT subcut_fat_sd_int_right_2 BEST32.;
	FORMAT subcut_fat_sd_int_right_2 BEST12.;

	INPUT
		id_addi
		visit
		cort_bone_area_mm2_left_1
		cort_bone_area_mm2_left_2
		cort_bone_area_mm2_right_1
		cort_bone_area_mm2_right_2
		cort_bone_mean_int_hu_left_1
		cort_bone_mean_int_hu_left_2
		cort_bone_mean_int_hu_right_1
		cort_bone_mean_int_hu_right_2
		cort_bone_std_int_hu_left_1
		cort_bone_std_int_hu_left_2
		cort_bone_std_int_hu_right_1
		cort_bone_std_int_hu_right_2
		in_bone_mean_int_hu_left_1
		in_bone_mean_int_hu_left_2
		in_bone_mean_int_hu_right_1
		in_bone_mean_int_hu_right_2
		in_bone_sd_intensity_hu_left_1
		in_bone_sd_intensity_hu_left_2
		in_bone_sd_intensity_hu_right_1
		in_bone_sd_intensity_hu_right_2
		inner_diameter_mm_left_1
		inner_diameter_mm_left_2
		inner_diameter_mm_right_1
		inner_diameter_mm_right_2
		intermusc_fat_area_mm2_left_1
		intermusc_fat_area_mm2_left_2
		intermusc_fat_area_mm2_right_1
		intermusc_fat_area_mm2_right_2
		internal_bone_area_mm2_left_1
		internal_bone_area_mm2_left_2
		internal_bone_area_mm2_right_1
		internal_bone_area_mm2_right_2
		intrmsc_fat_mean_int_hu_left_1
		intrmsc_fat_mean_int_hu_left_2
		intrmsc_fat_mean_int_hu_right_1
		intrmsc_fat_mean_int_hu_right_2
		intrmsc_fat_sd_int_left_1
		intrmsc_fat_sd_int_left_2
		intrmsc_fat_sd_int_right_1
		intrmsc_fat_sd_int_right_2
		max_cort_bone_thick_mm_left_1
		max_cort_bone_thick_mm_left_2
		max_cort_bone_thick_mm_right_1
		max_cort_bone_thick_mm_right_2
		mean_cort_bone_thick_mm_left_1
		mean_cort_bone_thick_mm_left_2
		mean_cort_bone_thick_mm_right_1
		mean_cort_bone_thick_mm_right_2
		min_cor_bone_thick_mm_left_1
		min_cor_bone_thick_mm_left_2
		min_cor_bone_thick_mm_right_1
		min_cor_bone_thick_mm_right_2
		muscle_area_mm2_left_1
		muscle_area_mm2_left_2
		muscle_area_mm2_right_1
		muscle_area_mm2_right_2
		muscle_mean_int_hu_left_1
		muscle_mean_int_hu_left_2
		muscle_mean_int_hu_right_1
		muscle_mean_int_hu_right_2
		muscle_std_intensity_left_1
		muscle_std_intensity_left_2
		muscle_std_intensity_right_1
		muscle_std_intensity_right_2
		outer_diameter_mm_left_1
		outer_diameter_mm_left_2
		outer_diameter_mm_right_1
		outer_diameter_mm_right_2
		sd_cort_bone_thick_left_1
		sd_cort_bone_thick_left_2
		sd_cort_bone_thick_right_1
		sd_cort_bone_thick_right_2
		subcut_fat_area_mm2_left_1
		subcut_fat_area_mm2_left_2
		subcut_fat_area_mm2_right_1
		subcut_fat_area_mm2_right_2
		subcut_fat_mean_int_hu_left_1
		subcut_fat_mean_int_hu_left_2
		subcut_fat_mean_int_hu_right_1
		subcut_fat_mean_int_hu_right_2
		subcut_fat_sd_int_left_1
		subcut_fat_sd_int_left_2
		subcut_fat_sd_int_right_1
		subcut_fat_sd_int_right_2
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		id_addi = "Masked Participant ID for ADDI"
		visit = "Visit Number"
		cort_bone_area_mm2_left_1 = "Cortical Bone Area (mm2) Left 1"
		cort_bone_area_mm2_left_2 = "Cortical Bone Area (mm2) Left 2"
		cort_bone_area_mm2_right_1 = "Cortical Bone Area (mm2) Right 1"
		cort_bone_area_mm2_right_2 = "Cortical Bone Area (mm2) Right 2"
		cort_bone_mean_int_hu_left_1 = "Cortical Bone Mean Intensity (HU) Left 1"
		cort_bone_mean_int_hu_left_2 = "Cortical Bone Mean Intensity (HU) Left 2"
		cort_bone_mean_int_hu_right_1 = "Cortical Bone Mean Intensity (HU) Right 1"
		cort_bone_mean_int_hu_right_2 = "Cortical Bone Mean Intensity (HU) Right 2"
		cort_bone_std_int_hu_left_1 = "Cortical Bone Standard Deviation Intensity (HU) Left 1"
		cort_bone_std_int_hu_left_2 = "Cortical Bone Standard Deviation Intensity (HU) Left 2"
		cort_bone_std_int_hu_right_1 = "Cortical Bone Standard Deviation Intensity (HU) Right 1"
		cort_bone_std_int_hu_right_2 = "Cortical Bone Standard Deviation Intensity (HU) Right 2"
		in_bone_mean_int_hu_left_1 = "Inner Diameter (mm) Left 1"
		in_bone_mean_int_hu_left_2 = "Inner Diameter (mm) Left 2"
		in_bone_mean_int_hu_right_1 = "Inner Diameter (mm) Right 1"
		in_bone_mean_int_hu_right_2 = "Inner Diameter (mm) Right 2"
		in_bone_sd_intensity_hu_left_1 = "Intermuscular Fat Area (mm2) Left 1"
		in_bone_sd_intensity_hu_left_2 = "Intermuscular Fat Area (mm2) Left 2"
		in_bone_sd_intensity_hu_right_1 = "Intermuscular Fat Area (mm2) Right 1"
		in_bone_sd_intensity_hu_right_2 = "Intermuscular Fat Area (mm2) Right 2"
		inner_diameter_mm_left_1 = "Intermuscular Fat Mean Intensity (HU) Left 1"
		inner_diameter_mm_left_2 = "Intermuscular Fat Mean Intensity (HU) Left 2"
		inner_diameter_mm_right_1 = "Intermuscular Fat Mean Intensity (HU) Right 1"
		inner_diameter_mm_right_2 = "Intermuscular Fat Mean Intensity (HU) Right 2"
		intermusc_fat_area_mm2_left_1 = "Intermuscular Fat Standard Deviation Intensity Left 1"
		intermusc_fat_area_mm2_left_2 = "Intermuscular Fat Standard Deviation Intensity Left 2"
		intermusc_fat_area_mm2_right_1 = "Intermuscular Fat Standard Deviation Intensity Right 1"
		intermusc_fat_area_mm2_right_2 = "Intermuscular Fat Standard Deviation Intensity Right 2"
		internal_bone_area_mm2_left_1 = "Internal Bone Area (mm2) Left 1"
		internal_bone_area_mm2_left_2 = "Internal Bone Area (mm2) Left 2"
		internal_bone_area_mm2_right_1 = "Internal Bone Area (mm2) Right 1"
		internal_bone_area_mm2_right_2 = "Internal Bone Area (mm2) Right 2"
		intrmsc_fat_mean_int_hu_left_1 = "Internal Bone Mean Intensity (HU) Left 1"
		intrmsc_fat_mean_int_hu_left_2 = "Internal Bone Mean Intensity (HU) Left 2"
		intrmsc_fat_mean_int_hu_right_1 = "Internal Bone Mean Intensity (HU) Right 1"
		intrmsc_fat_mean_int_hu_right_2 = "Internal Bone Mean Intensity (HU) Right 2"
		intrmsc_fat_sd_int_left_1 = "Internal Bone Standard Deviation Intensity (HU) Left 1"
		intrmsc_fat_sd_int_left_2 = "Internal Bone Standard Deviation Intensity (HU) Left 2"
		intrmsc_fat_sd_int_right_1 = "Internal Bone Standard Deviation Intensity (HU) Right 1"
		intrmsc_fat_sd_int_right_2 = "Internal Bone Standard Deviation Intensity (HU) Right 2"
		max_cort_bone_thick_mm_left_1 = "Max Cortical Bone Thickness (mm) Left 1"
		max_cort_bone_thick_mm_left_2 = "Max Cortical Bone Thickness (mm) Left 2"
		max_cort_bone_thick_mm_right_1 = "Max Cortical Bone Thickness (mm) Right 1"
		max_cort_bone_thick_mm_right_2 = "Max Cortical Bone Thickness (mm) Right 2"
		mean_cort_bone_thick_mm_left_1 = "Mean Cortical Bone Thickness (mm) Left 1"
		mean_cort_bone_thick_mm_left_2 = "Mean Cortical Bone Thickness (mm) Left 2"
		mean_cort_bone_thick_mm_right_1 = "Mean Cortical Bone Thickness (mm) Right 1"
		mean_cort_bone_thick_mm_right_2 = "Mean Cortical Bone Thickness (mm) Right 2"
		min_cor_bone_thick_mm_left_1 = "Min Cortical Bone Thickness (mm) Left 1"
		min_cor_bone_thick_mm_left_2 = "Min Cortical Bone Thickness (mm) Left 2"
		min_cor_bone_thick_mm_right_1 = "Min Cortical Bone Thickness (mm) Right 1"
		min_cor_bone_thick_mm_right_2 = "Min Cortical Bone Thickness (mm) Right 2"
		muscle_area_mm2_left_1 = "Muscle Area (mm2) Left 1"
		muscle_area_mm2_left_2 = "Muscle Area (mm2) Left 2"
		muscle_area_mm2_right_1 = "Muscle Area (mm2) Right"
		muscle_area_mm2_right_2 = "Muscle Area (mm2) Right 2"
		muscle_mean_int_hu_left_1 = "Muscle Mean Intensity (HU) Left 1"
		muscle_mean_int_hu_left_2 = "Muscle Mean Intensity (HU) Left 2"
		muscle_mean_int_hu_right_1 = "Muscle Mean Intensity (HU) Right 1"
		muscle_mean_int_hu_right_2 = "Muscle Mean Intensity (HU) Right 2"
		muscle_std_intensity_left_1 = "Muscle Standard Deviation Intensity Left 1"
		muscle_std_intensity_left_2 = "Muscle Standard Deviation Intensity Left 2"
		muscle_std_intensity_right_1 = "Muscle Standard Deviation Intensity Right 1"
		muscle_std_intensity_right_2 = "Muscle Standard Deviation Intensity Right 2"
		outer_diameter_mm_left_1 = "Outer Diameter (mm) Left 1"
		outer_diameter_mm_left_2 = "Outer Diameter (mm) Left 2"
		outer_diameter_mm_right_1 = "Outer Diameter (mm) Right 1"
		outer_diameter_mm_right_2 = "Outer Diameter (mm) Right 2"
		sd_cort_bone_thick_left_1 = "Standard Deviation of Cortical Bone Thickness Left 1"
		sd_cort_bone_thick_left_2 = "Standard Deviation of Cortical Bone Thickness Left 2"
		sd_cort_bone_thick_right_1 = "Standard Deviation of Cortical Bone Thickness Right 1"
		sd_cort_bone_thick_right_2 = "Standard Deviation of Cortical Bone Thickness Right 2"
		subcut_fat_area_mm2_left_1 = "Subcutaneous Fat Area (mm2) Left 1"
		subcut_fat_area_mm2_left_2 = "Subcutaneous Fat Area (mm2) Left 2"
		subcut_fat_area_mm2_right_1 = "Subcutaneous Fat Area (mm2) Right 1"
		subcut_fat_area_mm2_right_2 = "Subcutaneous Fat Area (mm2) Right 2"
		subcut_fat_mean_int_hu_left_1 = "Subcutaneous Fat Mean Intensity (HU) Left 1"
		subcut_fat_mean_int_hu_left_2 = "Subcutaneous Fat Mean Intensity (HU) Left 2"
		subcut_fat_mean_int_hu_right_1 = "Subcutaneous Fat Mean Intensity (HU) Right 1"
		subcut_fat_mean_int_hu_right_2 = "Subcutaneous Fat Mean Intensity (HU) Right 2"
		subcut_fat_sd_int_left_1 = "Subcutaneous Fat Standard Deviation Intensity Left 1"
		subcut_fat_sd_int_left_2 = "Subcutaneous Fat Standard Deviation Intensity Left 2"
		subcut_fat_sd_int_right_1 = "Subcutaneous Fat Standard Deviation Intensity Right 1"
		subcut_fat_sd_int_right_2 = "Subcutaneous Fat Standard Deviation Intensity Right 2"
	;
RUN;


        DATA bodyi_thighmetric2021v02;
            SET WORK.IMPORT;
        RUN;
        