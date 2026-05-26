#!/bin/bash
# Tự động hóa thiết lập Dataplex (Knowledge Catalog) để quét và định danh tài liệu phi cấu trúc
export PROJECT_ID="code-vipassana-497502"
export REGION="us-central1"

# Khởi tạo tiến trình quét tự động (DataScan) trên Bucket chỉ định
# Lưu ý: Cú pháp CLI áp dụng cho môi trường ép cấu hình tự động
gcloud dataplex datascans create data-discovery froyo-data-stg1 \
    --location=$REGION \
    --description="Quét định danh và trích xuất ngữ nghĩa dữ liệu PDF" \
    --data-source-bucket="gs://froyo_data497502" \
    --bigquery-publishing-dataset="projects/$PROJECT_ID/datasets/froyo_data"
