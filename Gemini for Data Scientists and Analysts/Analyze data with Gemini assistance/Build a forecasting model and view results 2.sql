SELECT
*
FROM
  ML.FORECAST(MODEL `qwiklabs-gcp-00-3bf9175fff86.bqml_tutorial.sales_forecasting_model`,
STRUCT(
      7 AS horizon,
      0.95 AS confidence_level
))