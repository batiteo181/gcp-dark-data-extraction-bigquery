# Unstructured Dark Data Ingestion & Semantic AI Agent Pipeline

Dự án triển khai một hệ thống tự động hóa xử lý dữ liệu chìm (Dark Data) quy mô doanh nghiệp trên nền tảng Google Cloud Platform. Hệ thống chuyển hóa hàng trăm tài liệu PDF công thức và chuỗi cung ứng phi cấu trúc thành dữ liệu quan hệ có khả năng truy vấn tức thời qua SQL và ngôn ngữ tự nhiên (AI Agent Chat).

## Kiến trúc Luồng Dữ liệu (End-to-End Architecture)

1. **Hồ chứa dữ liệu (Data Lake)**: Tài liệu thô được đẩy vào Cloud Storage sử dụng `gcloud storage`.
2. **Khám phá siêu dữ liệu (Metadata Discovery)**: Cấu hình Google Cloud Dataplex (Knowledge Catalog) quét tự động nhằm định danh tài sản dữ liệu thông qua kiến trúc BigLake Connection.
3. **Suy luận ngữ nghĩa (Semantic Inference)**: Khai thác Vertex AI (Gemini 1.5 Pro) trích xuất tự động các thực thể ẩn (Thành phần, Chất dị ứng) trong văn bản tự do.
4. **Xử lý sự cố Warehouse (Troubleshooting & Cleaning)**: Can thiệp sâu bằng BigQuery SQL DDL/DML để xử lý lỗi dị thường định dạng hệ thống (Null values, Corrupted string fields), tái xây dựng hệ thống khóa ngoại chuẩn hóa.
5. **Đóng gói tri thức (AI Agent Grounding)**: Tích hợp cấu trúc bảng BigQuery vào Vertex AI Agent Builder để phục vụ giao tiếp ngôn ngữ tự nhiên.

## Hướng dẫn Vận hành Mã nguồn

### Thiết lập môi trường và cấu trúc bảng
Chạy lệnh cấu hình hạ tầng trong Cloud Shell:
```bash
chmod +x scripts/01_gcp_infrastructure.sh
./scripts/01_gcp_infrastructure.sh


```
<img width="1920" height="965" alt="image" src="https://github.com/user-attachments/assets/502bce2e-5bb5-41b1-a584-dda1698fde9d" />

