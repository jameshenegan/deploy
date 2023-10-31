import pandas as pd

# Import the inst_biodex Table
path_to_data = "../data-csv/inst_biodex.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    