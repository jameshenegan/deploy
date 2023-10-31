import pandas as pd

# Import the diagnoses_blsadx Table
path_to_data = "../data-csv/diagnoses_blsadx.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    