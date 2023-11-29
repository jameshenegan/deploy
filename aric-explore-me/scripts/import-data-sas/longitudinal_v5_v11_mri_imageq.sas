%let path_to_root_folder = ../data;
%let name_of_subfolder = Longitudinal;
%let dataset_name = v5_v11_mri_imageqc_np;
%let working_dataset_name = v5_v11_mri_imageqc_np;

LIBNAME mylib "&path_to_root_folder.\&name_of_subfolder";

DATA &working_dataset_name;
    SET mylib.&dataset_name;
RUN;
