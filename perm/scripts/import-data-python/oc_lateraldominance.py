import pandas as pd

# Import the oc_lateraldominance Table
path_to_data = "../data-csv/oc_lateraldominance.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    