import pandas as pd

# Import the der_physicalfunction Table
path_to_data = "../data-csv/der_physicalfunction.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    