import pandas as pd

# Import the der_sf12 Table
path_to_data = "../data-csv/der_sf12.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    