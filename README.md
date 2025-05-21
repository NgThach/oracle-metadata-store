# oracle-metadata-store

Một dự án mô phỏng hệ thống quản lý metadata đơn giản sử dụng Oracle Database.

## 📌 Chức năng:
- Quản lý datasets, tables, columns
- Theo dõi lineage giữa các bảng
- Ghi lại log truy cập dữ liệu
- Liên kết với thông tin người sở hữu dữ liệu

## 📁 Cấu trúc:
- `schema/`: Tạo bảng
- `seed_data/`: Dữ liệu mẫu
- `queries/`: Các câu truy vấn mẫu

## 🚀 Cách dùng:
1. Tạo schema trong Oracle bằng `create_tables.sql`
2. Chạy `insert_sample_data.sql`
3. Thử các câu truy vấn trong thư mục `queries/`

## 🎓 Học được gì:
- Oracle SQL & schema design
- Metadata modeling
- Truy vấn phức tạp bằng JOIN
