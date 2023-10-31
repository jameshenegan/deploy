import pandas as pd

# Import the inst_abicollinsvasera Table
path_to_data = "../data-csv/inst_abicollinsvasera.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    