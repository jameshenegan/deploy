import pandas as pd

# Import the oc_visiontest Table
path_to_data = "../data-csv/oc_visiontest.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    