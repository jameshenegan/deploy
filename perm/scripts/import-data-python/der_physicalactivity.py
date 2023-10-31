import pandas as pd

# Import the der_physicalactivity Table
path_to_data = "../data-csv/der_physicalactivity.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    