import pandas as pd

# Import the oc_ekginterpretation Table
path_to_data = "../data-csv/oc_ekginterpretation.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    