import pandas as pd

# Import the oc_bodymeasurements Table
path_to_data = "../data-csv/oc_bodymeasurements.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    