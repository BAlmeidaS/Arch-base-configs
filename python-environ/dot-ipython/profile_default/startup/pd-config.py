try:
    import pandas as pd

    pd.set_option('display.max_rows', 100)
    pd.set_option('display.max_columns', 500)
    pd.set_option('display.width', 1000)
except ModuleNotFoundError:
    pass
