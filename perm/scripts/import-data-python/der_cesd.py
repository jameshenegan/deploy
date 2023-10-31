import pandas as pd

# Import the der_cesd Table
path_to_data = "../data-csv/der_cesd.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    