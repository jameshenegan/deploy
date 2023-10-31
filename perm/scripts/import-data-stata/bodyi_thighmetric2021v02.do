clear
import delimited "../data-csv/bodyi_thighmetric2021v02.csv", bindquote(strict)

label variable id_addi "Masked Participant ID for ADDI"

label variable visit "Visit Number"

label variable cort_bone_area_mm2_left_1 "Cortical Bone Area (mm2) Left 1"

label variable cort_bone_area_mm2_left_2 "Cortical Bone Area (mm2) Left 2"

label variable cort_bone_area_mm2_right_1 "Cortical Bone Area (mm2) Right 1"

label variable cort_bone_area_mm2_right_2 "Cortical Bone Area (mm2) Right 2"

label variable cort_bone_mean_int_hu_left_1 "Cortical Bone Mean Intensity (HU) Left 1"

label variable cort_bone_mean_int_hu_left_2 "Cortical Bone Mean Intensity (HU) Left 2"

label variable cort_bone_mean_int_hu_right_1 "Cortical Bone Mean Intensity (HU) Right 1"

label variable cort_bone_mean_int_hu_right_2 "Cortical Bone Mean Intensity (HU) Right 2"

label variable cort_bone_std_int_hu_left_1 "Cortical Bone Standard Deviation Intensity (HU) Left 1"

label variable cort_bone_std_int_hu_left_2 "Cortical Bone Standard Deviation Intensity (HU) Left 2"

label variable cort_bone_std_int_hu_right_1 "Cortical Bone Standard Deviation Intensity (HU) Right 1"

label variable cort_bone_std_int_hu_right_2 "Cortical Bone Standard Deviation Intensity (HU) Right 2"

label variable in_bone_mean_int_hu_left_1 "Inner Diameter (mm) Left 1"

label variable in_bone_mean_int_hu_left_2 "Inner Diameter (mm) Left 2"

label variable in_bone_mean_int_hu_right_1 "Inner Diameter (mm) Right 1"

label variable in_bone_mean_int_hu_right_2 "Inner Diameter (mm) Right 2"

label variable in_bone_sd_intensity_hu_left_1 "Intermuscular Fat Area (mm2) Left 1"

label variable in_bone_sd_intensity_hu_left_2 "Intermuscular Fat Area (mm2) Left 2"

label variable in_bone_sd_intensity_hu_right_1 "Intermuscular Fat Area (mm2) Right 1"

label variable in_bone_sd_intensity_hu_right_2 "Intermuscular Fat Area (mm2) Right 2"

label variable inner_diameter_mm_left_1 "Intermuscular Fat Mean Intensity (HU) Left 1"

label variable inner_diameter_mm_left_2 "Intermuscular Fat Mean Intensity (HU) Left 2"

label variable inner_diameter_mm_right_1 "Intermuscular Fat Mean Intensity (HU) Right 1"

label variable inner_diameter_mm_right_2 "Intermuscular Fat Mean Intensity (HU) Right 2"

label variable intermusc_fat_area_mm2_left_1 "Intermuscular Fat Standard Deviation Intensity Left 1"

label variable intermusc_fat_area_mm2_left_2 "Intermuscular Fat Standard Deviation Intensity Left 2"

label variable intermusc_fat_area_mm2_right_1 "Intermuscular Fat Standard Deviation Intensity Right 1"

label variable intermusc_fat_area_mm2_right_2 "Intermuscular Fat Standard Deviation Intensity Right 2"

label variable internal_bone_area_mm2_left_1 "Internal Bone Area (mm2) Left 1"

label variable internal_bone_area_mm2_left_2 "Internal Bone Area (mm2) Left 2"

label variable internal_bone_area_mm2_right_1 "Internal Bone Area (mm2) Right 1"

label variable internal_bone_area_mm2_right_2 "Internal Bone Area (mm2) Right 2"

label variable intrmsc_fat_mean_int_hu_left_1 "Internal Bone Mean Intensity (HU) Left 1"

label variable intrmsc_fat_mean_int_hu_left_2 "Internal Bone Mean Intensity (HU) Left 2"

label variable intrmsc_fat_mean_int_hu_right_1 "Internal Bone Mean Intensity (HU) Right 1"

label variable intrmsc_fat_mean_int_hu_right_2 "Internal Bone Mean Intensity (HU) Right 2"

label variable intrmsc_fat_sd_int_left_1 "Internal Bone Standard Deviation Intensity (HU) Left 1"

label variable intrmsc_fat_sd_int_left_2 "Internal Bone Standard Deviation Intensity (HU) Left 2"

label variable intrmsc_fat_sd_int_right_1 "Internal Bone Standard Deviation Intensity (HU) Right 1"

label variable intrmsc_fat_sd_int_right_2 "Internal Bone Standard Deviation Intensity (HU) Right 2"

label variable max_cort_bone_thick_mm_left_1 "Max Cortical Bone Thickness (mm) Left 1"

label variable max_cort_bone_thick_mm_left_2 "Max Cortical Bone Thickness (mm) Left 2"

label variable max_cort_bone_thick_mm_right_1 "Max Cortical Bone Thickness (mm) Right 1"

label variable max_cort_bone_thick_mm_right_2 "Max Cortical Bone Thickness (mm) Right 2"

label variable mean_cort_bone_thick_mm_left_1 "Mean Cortical Bone Thickness (mm) Left 1"

label variable mean_cort_bone_thick_mm_left_2 "Mean Cortical Bone Thickness (mm) Left 2"

label variable mean_cort_bone_thick_mm_right_1 "Mean Cortical Bone Thickness (mm) Right 1"

label variable mean_cort_bone_thick_mm_right_2 "Mean Cortical Bone Thickness (mm) Right 2"

label variable min_cor_bone_thick_mm_left_1 "Min Cortical Bone Thickness (mm) Left 1"

label variable min_cor_bone_thick_mm_left_2 "Min Cortical Bone Thickness (mm) Left 2"

label variable min_cor_bone_thick_mm_right_1 "Min Cortical Bone Thickness (mm) Right 1"

label variable min_cor_bone_thick_mm_right_2 "Min Cortical Bone Thickness (mm) Right 2"

label variable muscle_area_mm2_left_1 "Muscle Area (mm2) Left 1"

label variable muscle_area_mm2_left_2 "Muscle Area (mm2) Left 2"

label variable muscle_area_mm2_right_1 "Muscle Area (mm2) Right"

label variable muscle_area_mm2_right_2 "Muscle Area (mm2) Right 2"

label variable muscle_mean_int_hu_left_1 "Muscle Mean Intensity (HU) Left 1"

label variable muscle_mean_int_hu_left_2 "Muscle Mean Intensity (HU) Left 2"

label variable muscle_mean_int_hu_right_1 "Muscle Mean Intensity (HU) Right 1"

label variable muscle_mean_int_hu_right_2 "Muscle Mean Intensity (HU) Right 2"

label variable muscle_std_intensity_left_1 "Muscle Standard Deviation Intensity Left 1"

label variable muscle_std_intensity_left_2 "Muscle Standard Deviation Intensity Left 2"

label variable muscle_std_intensity_right_1 "Muscle Standard Deviation Intensity Right 1"

label variable muscle_std_intensity_right_2 "Muscle Standard Deviation Intensity Right 2"

label variable outer_diameter_mm_left_1 "Outer Diameter (mm) Left 1"

label variable outer_diameter_mm_left_2 "Outer Diameter (mm) Left 2"

label variable outer_diameter_mm_right_1 "Outer Diameter (mm) Right 1"

label variable outer_diameter_mm_right_2 "Outer Diameter (mm) Right 2"

label variable sd_cort_bone_thick_left_1 "Standard Deviation of Cortical Bone Thickness Left 1"

label variable sd_cort_bone_thick_left_2 "Standard Deviation of Cortical Bone Thickness Left 2"

label variable sd_cort_bone_thick_right_1 "Standard Deviation of Cortical Bone Thickness Right 1"

label variable sd_cort_bone_thick_right_2 "Standard Deviation of Cortical Bone Thickness Right 2"

label variable subcut_fat_area_mm2_left_1 "Subcutaneous Fat Area (mm2) Left 1"

label variable subcut_fat_area_mm2_left_2 "Subcutaneous Fat Area (mm2) Left 2"

label variable subcut_fat_area_mm2_right_1 "Subcutaneous Fat Area (mm2) Right 1"

label variable subcut_fat_area_mm2_right_2 "Subcutaneous Fat Area (mm2) Right 2"

label variable subcut_fat_mean_int_hu_left_1 "Subcutaneous Fat Mean Intensity (HU) Left 1"

label variable subcut_fat_mean_int_hu_left_2 "Subcutaneous Fat Mean Intensity (HU) Left 2"

label variable subcut_fat_mean_int_hu_right_1 "Subcutaneous Fat Mean Intensity (HU) Right 1"

label variable subcut_fat_mean_int_hu_right_2 "Subcutaneous Fat Mean Intensity (HU) Right 2"

label variable subcut_fat_sd_int_left_1 "Subcutaneous Fat Standard Deviation Intensity Left 1"

label variable subcut_fat_sd_int_left_2 "Subcutaneous Fat Standard Deviation Intensity Left 2"

label variable subcut_fat_sd_int_right_1 "Subcutaneous Fat Standard Deviation Intensity Right 1"

label variable subcut_fat_sd_int_right_2 "Subcutaneous Fat Standard Deviation Intensity Right 2"

