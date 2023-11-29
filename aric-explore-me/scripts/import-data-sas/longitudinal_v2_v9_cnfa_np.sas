%let path_to_root_folder = ../data;
%let name_of_subfolder = Longitudinal;
%let dataset_name = v2_v9_cnfa_np;
%let working_dataset_name = v2_v9_cnfa_np;

LIBNAME mylib "&path_to_root_folder.\&name_of_subfolder";

DATA &working_dataset_name;
    SET mylib.&dataset_name;
RUN;
