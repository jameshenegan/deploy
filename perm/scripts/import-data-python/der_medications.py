import pandas as pd

# Import the der_medications Table
path_to_data = "../data-csv/der_medications.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    