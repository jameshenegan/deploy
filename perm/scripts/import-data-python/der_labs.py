import pandas as pd

# Import the der_labs Table
path_to_data = "../data-csv/der_labs.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    