def model(dbt, session):
    dbt.config(materialized='table')
    my_sql_model_df = dbt.ref("stablecoin_activity_per_day")
    # my_sql_model_df = dbt.source("eth", "contracts")
    return my_sql_model_df
