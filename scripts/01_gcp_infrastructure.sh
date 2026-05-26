#!/bin/bash
# Bộ kịch bản thiết lập hạ tầng lưu trữ và kết nối BigLake dữ liệu thô
export PROJECT_ID="code-vipassana-497502"
export REGION="us-central1"
export BUCKET_NAME="gs://froyo_data497502"

gcloud config set project $PROJECT_ID

# [Codelab #2] Khởi tạo hồ chứa dữ liệu thô (Data Lake)
gcloud storage buckets create $BUCKET_NAME --location=$REGION

# [Codelab #3] Thiết lập BigQuery Dataset để cấu trúc hóa dữ liệu
bq mk --location=$REGION --dataset $PROJECT_ID:froyo_data

# Thiết lập Cloud Resource Connection kết nối lưu trữ đám mây với kho dữ liệu
bq mk --connection --location=$REGION --connection_type=CLOUD_RESOURCE bq-connection
