DROP TABLE IF EXISTS students;

-- Bước 1: Tạo lại cấu trúc bảng chuẩn
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(100),
    gender VARCHAR(10),
    birth_year INT,
    major VARCHAR(50),
    gpa DECIMAL(3,2)
);


INSERT INTO students (full_name, gender, birth_year, major, gpa) VALUES
('Nguyễn Văn A', 'Nam', 2002, 'CNTT', 3.6),
('Trần Thị Bích Ngọc', 'Nữ', 2001, 'Kinh tế', 3.2),
('Lê Quốc Cường', 'Nam', 2003, 'CNTT', 2.7),
('Phạm Minh Anh', 'Nữ', 2000, 'Luật', 3.9),
('Nguyễn Văn A', 'Nam', 2002, 'CNTT', 3.6),
('Lưu Đức Tài', 'Nam', 2004, 'Cơ khí', NULL),
('Võ Thị Thu Hằng', 'Nữ', 2001, 'CNTT', 3.0);

-- Bước 3: Thực hiện 8 yêu cầu của bài tập Giỏi

-- 1. Chèn sinh viên mới "Phan Hoàng Nam"
INSERT INTO students (full_name, gender, birth_year, major, gpa) 
VALUES ('Phan Hoàng Nam', 'Nam', 2003, 'CNTT', 3.8);

-- 2. Cập nhật gpa cho "Lê Quốc Cường" thành 3.4
UPDATE students SET gpa = 3.4 WHERE full_name = 'Lê Quốc Cường';

-- 3. Xóa các sinh viên có gpa bị trống (NULL)
DELETE FROM students WHERE gpa IS NULL;

-- 4. Hiển thị ngành CNTT, gpa >= 3.0 (lấy 3 kết quả đầu)
SELECT * FROM students 
WHERE major = 'CNTT' AND gpa >= 3.0 
LIMIT 3;

-- 5. Liệt kê danh sách ngành học duy nhất (không trùng)
SELECT DISTINCT major FROM students;

-- 6. Sắp xếp: Ngành CNTT, GPA giảm dần, Tên tăng dần (A-Z)
SELECT * FROM students 
WHERE major = 'CNTT' 
ORDER BY gpa DESC, full_name ASC;

-- 7. Tìm sinh viên có tên bắt đầu bằng "Nguyễn"
SELECT * FROM students WHERE full_name LIKE 'Nguyễn%';

-- 8. Hiển thị sinh viên có năm sinh từ 2001 đến 2003
SELECT * FROM students WHERE birth_year BETWEEN 2001 AND 2003;