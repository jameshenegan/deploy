import pandas as pd

# Import the inst_proprioception Table
path_to_data = "../data-csv/inst_proprioception.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    