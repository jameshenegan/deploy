import pandas as pd

# Import the inst_echoxcelera Table
path_to_data = "../data-csv/inst_echoxcelera.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    