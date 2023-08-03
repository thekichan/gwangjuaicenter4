-- 학과
-- Insert data into Department table
INSERT INTO Department (department_code, department_name) VALUES
(1, '수학과'),
(2, '국어문학과'),
(3, '정보통신학과'),
(4, '모바일공학과');



-- 학생
-- Insert data into Student table
INSERT INTO Student (name, height, department_code) VALUES
('가길동', 170.5, 1),
('나길동', 165.2, 1),
('다길동', 180.0, 2),
('라길동', 175.8, 3),
('마길동', 160.7, 4),
('바길동', 168.3, 1),
('사길동', 172.1, 2),
('아길동', 175.0, 1);

-- 교수
-- Insert data into Professor table
INSERT INTO Professor (name, department_code) VALUES
('가 교수', 1),
('나 교수', 1),
('다 교수', 2),
('빌 게이츠', 3),
('스티브 잡스', 4);

-- 개설과목
-- Insert data into Course table
INSERT INTO Course (course_name, professor_code, start_date, end_date) VALUES
('교양 영어', 1, '2023-07-01', '2023-08-15'),
('데이터베이스 입문', 2, '2023-07-01', '2023-08-31'),
('회로이론', 3, '2023-07-15', '2023-09-15'),
('공학수학', 4, '2023-07-15', '2023-09-30'),
('객체지향 프로그래밍', 5, '2023-07-01', '2023-08-31');

-- 수강
-- Insert data into Student_Course table
INSERT INTO Student_Course (student_id, course_code) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(5, 4),
(6, 5),
(7, 5);
