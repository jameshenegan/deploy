import pandas as pd

# Import the oc_agingandskininflamm Table
path_to_data = "../data-csv/oc_agingandskininflamm.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    