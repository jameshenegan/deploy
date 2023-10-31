import pandas as pd

# Import the oc_circadiancorebodytemp Table
path_to_data = "../data-csv/oc_circadiancorebodytemp.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    