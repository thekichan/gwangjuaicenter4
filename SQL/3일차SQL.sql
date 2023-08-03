-- Drop the existing tables (if they exist)
DROP TABLE IF EXISTS Student_Course;
DROP TABLE IF EXISTS Course;
DROP TABLE IF EXISTS Professor;
DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Department;

-- Create Department table
CREATE TABLE Department (
  department_code INT PRIMARY KEY,
  department_name VARCHAR(50)
);

-- Create Student table
CREATE TABLE Student (
  student_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50),
  height DECIMAL(5,2),
  department_code INT
);

-- Create Professor table
CREATE TABLE Professor (
  professor_code INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50),
  department_code INT
);

-- Create Course table
CREATE TABLE Course (
  course_code INT PRIMARY KEY AUTO_INCREMENT,
  course_name VARCHAR(50),
  professor_code INT,
  start_date DATE,
  end_date DATE
);

-- Create Student_Course table
CREATE TABLE Student_Course (
  id INT PRIMARY KEY AUTO_INCREMENT,
  student_id INT,
  course_code INT
);
-- Add foreign key constraints using ALTER TABLE
ALTER TABLE Student
ADD CONSTRAINT FK_Student_Department
FOREIGN KEY (department_code) REFERENCES Department(department_code);

ALTER TABLE Professor
ADD CONSTRAINT FK_Professor_Department
FOREIGN KEY (department_code) REFERENCES Department(department_code);

ALTER TABLE Course
ADD CONSTRAINT FK_Course_Professor
FOREIGN KEY (professor_code) REFERENCES Professor(professor_code);

ALTER TABLE Student_Course
ADD CONSTRAINT FK_Student_Course_Student
FOREIGN KEY (student_id) REFERENCES Student(student_id);

ALTER TABLE Student_Course
ADD CONSTRAINT FK_Student_Course_Course
FOREIGN KEY (course_code) REFERENCES Course(course_code);

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
