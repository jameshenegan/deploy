import pandas as pd

# Import the nutr_blsaallfg1serv Table
path_to_data = "../data-csv/nutr_blsaallfg1serv.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    