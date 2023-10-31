import pandas as pd

# Import the der_glucose Table
path_to_data = "../data-csv/der_glucose.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    