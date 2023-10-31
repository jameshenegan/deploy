import pandas as pd

# Import the inst_cosmed Table
path_to_data = "../data-csv/inst_cosmed.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    