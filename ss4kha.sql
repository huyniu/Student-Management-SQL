-- 1. Thêm sinh viên mới: Hùng
INSERT INTO students (name, age, major, gpa) 
VALUES ('Hùng', 23, 'Hóa học', 3.4);

-- 2. Cập nhật GPA của Bình thành 3.6
UPDATE students SET gpa = 3.6 WHERE name = 'Bình';

-- 3. Xóa sinh viên có GPA < 3.0
DELETE FROM students WHERE gpa < 3.0;

-- 4. Liệt kê Tên và Chuyên ngành, sắp xếp GPA giảm dần
SELECT name, major FROM students ORDER BY gpa DESC;

-- 5. Liệt kê tên sinh viên duy nhất ngành CNTT
SELECT DISTINCT name FROM students WHERE major = 'CNTT';

-- 6. Sinh viên có GPA từ 3.0 đến 3.6
SELECT * FROM students WHERE gpa BETWEEN 3.0 AND 3.6;

-- 7. Tên bắt đầu bằng chữ 'C'
SELECT * FROM students WHERE name ILIKE 'C%';

-- 8. Hiển thị 3 sinh viên đầu tiên (tên tăng dần)
SELECT * FROM students ORDER BY name ASC LIMIT 3;