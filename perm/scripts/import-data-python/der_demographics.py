import pandas as pd

# Import the der_demographics Table
path_to_data = "../data-csv/der_demographics.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    