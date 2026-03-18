-- Bước 0: Xóa bảng cũ nếu đã tồn tại
DROP TABLE IF EXISTS products;

-- Bước 1: Tạo cấu trúc bảng products
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(15,2),
    stock INT,
    manufacturer VARCHAR(50)
);

-- Bước 2: Chèn dữ liệu mẫu (7 dòng như trong ảnh)
INSERT INTO products (name, category, price, stock, manufacturer) VALUES
('Laptop Dell XPS 13', 'Laptop', 25000000, 12, 'Dell'),
('Chuột Logitech M90', 'Phụ kiện', 150000, 50, 'Logitech'),
('Bàn phím cơ Razer', 'Phụ kiện', 2200000, 0, 'Razer'),
('Macbook Air M2', 'Laptop', 32000000, 7, 'Apple'),
('iPhone 14 Pro Max', 'Điện thoại', 35000000, 15, 'Apple'),
('Laptop Dell XPS 13', 'Laptop', 25000000, 12, 'Dell'),
('Tai nghe AirPods 3', 'Phụ kiện', 4500000, NULL, 'Apple');

-- =============================================
-- THỰC HIỆN CÁC YÊU CẦU:
-- =============================================

-- 1. Chèn dữ liệu mới: Chuột không dây Logitech M170
INSERT INTO products (name, category, price, stock, manufacturer)
VALUES ('Chuột không dây Logitech M170', 'Phụ kiện', 300000, 20, 'Logitech');

-- 2. Cập nhật dữ liệu: Tăng giá tất cả sản phẩm của Apple thêm 10%
UPDATE products 
SET price = price * 1.1 
WHERE manufacturer = 'Apple';

-- 3. Xóa dữ liệu: Sản phẩm có stock = 0
DELETE FROM products WHERE stock = 0;

-- 4. Lọc theo điều kiện: Giá từ 1,000,000 đến 30,000,000
SELECT * FROM products 
WHERE price BETWEEN 1000000 AND 30000000;

-- 5. Lọc giá trị NULL: Sản phẩm có stock là NULL
SELECT * FROM products WHERE stock IS NULL;

-- 6. Loại bỏ trùng lặp: Liệt kê hãng sản xuất duy nhất
SELECT DISTINCT manufacturer FROM products;

-- 7. Sắp xếp: Giá giảm dần, sau đó Tên tăng dần
-- 9. Giới hạn kết quả: Chỉ hiển thị 2 sản phẩm đầu tiên sau khi sắp xếp
SELECT * FROM products 
ORDER BY price DESC, name ASC 
LIMIT 2;

-- 8. Tìm kiếm: Tên chứa từ "laptop" (không phân biệt hoa thường)
SELECT * FROM products WHERE name ILIKE '%laptop%';