# Dark Data Extraction: Unstructured PDFs to BigQuery

## Mục tiêu Dự án
Xử lý "Dark Data" (Dữ liệu chìm). Trích xuất thông tin nghiệp vụ ẩn trong tệp PDF định dạng tự do (công thức, nhà cung cấp) và cấu trúc hóa thành cơ sở dữ liệu quan hệ phục vụ truy vấn tự động.

## Vấn đề Kỹ thuật
Hệ thống tài liệu doanh nghiệp thường lưu trữ dưới dạng phi cấu trúc. Việc truy xuất thành phần gây dị ứng (Allergens) từ tài liệu công thức yêu cầu rà soát thủ công, dễ sai sót. Các luồng ETL truyền thống dùng biểu thức chính quy (Regex) thất bại trước ngôn ngữ tự nhiên phức tạp.

## Kiến trúc Giải pháp
Xây dựng đường ống dữ liệu trên Google Cloud Platform:
1. **Data Lake**: Lưu trữ tệp PDF thô trên Cloud Storage.
2. **Semantic Extraction**: Ứng dụng suy luận ngữ nghĩa để phân tích nội dung.
3. **Data Warehouse**: Chuẩn hóa dữ liệu đầu ra thành cấu trúc liên kết khóa ngoại (Foreign Keys) trên BigQuery.
4. **Data Cleaning**: Gỡ lỗi khoảng trắng ẩn ngầm (`\r`, `""`) sinh ra trong quá trình Load CSV để đảm bảo tính toàn vẹn của phép nối `INNER JOIN`.

## Kết quả
Hợp nhất dữ liệu thành công. Cho phép truy vấn tức thời thông tin dị ứng của sản phẩm bằng SQL tiêu chuẩn, giảm thời gian tra cứu từ hàng giờ xuống tính bằng giây.

## Mã nguồn
- [Thiết lập Schema & Dữ liệu (DDL/DML)](./sql/create_schema.sql)
- [Truy vấn Phân tích & Trích xuất (Analytical Query)](./sql/extract_allergens.sql)
