import pandas as pd

# Import the oc_psychosocialstressors Table
path_to_data = "../data-csv/oc_psychosocialstressors.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    