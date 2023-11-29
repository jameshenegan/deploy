%let path_to_root_folder = ../data;
%let name_of_subfolder = AFU;
%let dataset_name = gnf_np;
%let working_dataset_name = gnf_np;

LIBNAME mylib "&path_to_root_folder.\&name_of_subfolder";

DATA &working_dataset_name;
    SET mylib.&dataset_name;
RUN;
