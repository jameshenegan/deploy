import pandas as pd

# Import the der_cognition Table
path_to_data = "../data-csv/der_cognition.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    