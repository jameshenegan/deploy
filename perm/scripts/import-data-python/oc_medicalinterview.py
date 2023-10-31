import pandas as pd

# Import the oc_medicalinterview Table
path_to_data = "../data-csv/oc_medicalinterview.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    