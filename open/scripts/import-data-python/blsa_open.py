import pandas as pd

# Import the blsa_open Table
path_to_data = "../data-csv/blsa_open.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    