import pandas as pd

# Import the der_physicalperformance Table
path_to_data = "../data-csv/der_physicalperformance.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    