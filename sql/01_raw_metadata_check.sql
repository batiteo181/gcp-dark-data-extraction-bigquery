-- Kiểm tra cấu trúc bảng Metadata sinh ra sau khi chạy DataScan
-- Xác minh các trường dữ liệu hệ thống (uri, size, content_type) trước khi trích xuất ngữ nghĩa
SELECT 
  uri, 
  size, 
  content_type, 
  md5_hash 
FROM `code-vipassana-497502.froyo_data497502.froyo_data497502` 
LIMIT 10;
