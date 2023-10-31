import pandas as pd

# Import the bodyi_pelvismetric1203 Table
path_to_data = "../data-csv/bodyi_pelvismetric1203.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    