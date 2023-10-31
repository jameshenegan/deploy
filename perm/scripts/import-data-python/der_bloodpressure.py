import pandas as pd

# Import the der_bloodpressure Table
path_to_data = "../data-csv/der_bloodpressure.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    