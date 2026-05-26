# Cấu hình Tác tử Hội thoại (Vertex AI Agent Builder / Dialogflow CX)

Để hoàn thiện chuỗi giá trị End-to-End, kho dữ liệu sạch trên BigQuery được kết nối làm nền tảng tri thức (Grounding Data) cho AI Agent.

### Các bước thiết lập tác tử:
1. **Khởi tạo Agent**: Truy cập Vertex AI Agent Builder, chọn mẫu ứng dụng **Chat**.
2. **Liên kết Data Store**: Khởi tạo Data Store mới, chọn nguồn cấp dữ liệu là **BigQuery**.
3. **Trỏ đường dẫn**: Kết nối trực tiếp tới bảng dữ liệu quan hệ:
   `projects/code-vipassana-497502/datasets/froyo_data/tables/froyo_data_materialized`
4. **Cấu hình Prompt cho Agent**:
   *"Bạn là Trợ lý kiểm định an toàn thực phẩm. Sử dụng công cụ truy vấn BigQuery Data Store để kiểm tra thành phần và chất gây dị ứng của sản phẩm khi người dùng yêu cầu."*

### Kịch bản Kiểm thử Hội thoại (Test Cases):
* **Người dùng:** *"Sản phẩm Midnight Swirl có chứa chất gây dị ứng nào không?"*
* **AI Agent phản hồi:** *"Dựa trên dữ liệu chuỗi cung ứng, sản phẩm Midnight Swirl sử dụng thành phần Midnight Base 204, có chứa chất gây dị ứng là Soy (Đậu nành)."*
