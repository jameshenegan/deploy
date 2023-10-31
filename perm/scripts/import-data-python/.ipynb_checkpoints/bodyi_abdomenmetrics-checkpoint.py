import pandas as pd

# Import the bodyi_abdomenmetrics Table
path_to_data = "../data-csv/bodyi_abdomenmetrics.csv"
df = pd.read_csv(path_to_data, low_memory = False)
    