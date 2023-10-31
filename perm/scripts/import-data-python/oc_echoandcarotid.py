import pandas as pd

# Import the oc_echoandcarotid Table
path_to_data = "../data-csv/oc_echoandcarotid.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    