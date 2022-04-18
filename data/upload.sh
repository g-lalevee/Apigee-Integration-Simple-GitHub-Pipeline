bq --location=europe-west1 load \
--source_format=CSV \
bap-emea-apigee-5:ApigeeDemos.products \
./products.csv  \
id:STRING,name:STRING,description:STRING,picture:STRING,priceUsd:NUMERIC,categories:STRING
