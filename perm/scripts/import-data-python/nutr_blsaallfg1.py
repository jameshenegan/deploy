import pandas as pd

# Import the nutr_blsaallfg1 Table
path_to_data = "../data-csv/nutr_blsaallfg1.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    