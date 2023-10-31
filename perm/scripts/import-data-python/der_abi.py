import pandas as pd

# Import the der_abi Table
path_to_data = "../data-csv/der_abi.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    