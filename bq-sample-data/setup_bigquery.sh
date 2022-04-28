#! /bin/bash

export BQ_PROJECT_ID="YOUR_PROJECT"
export BQ_DATASET_ID="YOUR_DATASET"
export BQ_DATASET_LOCATION="YOUR_REGION"
export BQ_TABLE_NAME="products"
  
echo
echo Create BQ table  \""$BQ_TABLE_NAME"\" using GCP project \""$BQ_PROJECT_ID"\" and dataset \""$BQ_DATASET_ID"\" 

bq --project_id="$BQ_PROJECT_ID" --location=$BQ_DATASET_LOCATION load \
--source_format=CSV \
$BQ_PROJECT_ID:$BQ_DATASET_ID.$BQ_TABLE_NAME \
./bq-sample-data/products.csv  \
id:STRING,name:STRING,description:STRING,picture:STRING,priceUsd:NUMERIC,categories:STRING

bq --project_id="$BQ_PROJECT_ID" query --nouse_legacy_sql \
    "SELECT * FROM \`$BQ_PROJECT_ID.$BQ_DATASET_ID.$BQ_TABLE_NAME\`"

echo
echo Table created