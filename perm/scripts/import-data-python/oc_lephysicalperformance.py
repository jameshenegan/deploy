import pandas as pd

# Import the oc_lephysicalperformance Table
path_to_data = "../data-csv/oc_lephysicalperformance.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    