import pandas as pd

# Import the bodyi_thighmetric2021v02 Table
path_to_data = "../data-csv/bodyi_thighmetric2021v02.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    