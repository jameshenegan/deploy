import pandas as pd

# Import the inst_ftap Table
path_to_data = "../data-csv/inst_ftap.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    