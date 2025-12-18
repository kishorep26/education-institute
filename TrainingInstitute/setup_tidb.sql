-- ============================================
-- Meta Training Institute - Complete Database Setup
-- For TiDB Cloud
-- ============================================

-- Drop existing tables if they exist (in correct order due to foreign keys)
DROP TABLE IF EXISTS feedback;
DROP TABLE IF EXISTS admissionrequest;
DROP TABLE IF EXISTS faculty;
DROP TABLE IF EXISTS course;
DROP TABLE IF EXISTS student;
DROP TABLE IF EXISTS institute;
DROP TABLE IF EXISTS admin;

-- ============================================
-- Table: admin
-- ============================================
CREATE TABLE admin (
    adminID VARCHAR(20) NOT NULL PRIMARY KEY,
    adminPassword VARCHAR(15) NOT NULL UNIQUE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO admin VALUES ('admin', 'admin123');

-- ============================================
-- Table: institute
-- ============================================
CREATE TABLE institute (
    instituteID INT NOT NULL PRIMARY KEY,
    instituteName VARCHAR(100) NOT NULL,
    institutePassword VARCHAR(15) NOT NULL,
    affiliationDate VARCHAR(20),
    address VARCHAR(200),
    seats INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO institute (instituteID, instituteName, institutePassword, affiliationDate, address, seats) VALUES
(1, 'AIT', 'AIT123', '1975-07-29', 'Soladevanahalli', 80),
(2, 'BIT', 'BIT123', '1979-08-15', 'VV Puram', 60),
(3, 'CIT', 'CIT123', '1980-01-20', 'Jayanagar', 70),
(4, 'DIT', 'DIT123', '1985-05-10', 'Rajajinagar', 50);

-- ============================================
-- Table: student
-- ============================================
CREATE TABLE student (
    userID VARCHAR(20) NOT NULL PRIMARY KEY,
    emailID VARCHAR(50) NOT NULL UNIQUE,
    studentName VARCHAR(100) NOT NULL,
    qualification VARCHAR(50) NOT NULL,
    studentPassword VARCHAR(15) NOT NULL UNIQUE,
    number VARCHAR(15) NOT NULL UNIQUE,
    address VARCHAR(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO student (userID, emailID, studentName, qualification, studentPassword, number, address) VALUES
('kish123', 'kishore@gmail.com', 'Kishore Prashanth', 'CSE Graduate', 'kishore123', '+919845611328', 'TR Nagar'),
('prathi123', 'prathiksha@gmail.com', 'Prathiksha S Prashanth', 'ECE Graduate', 'prathi123', '+919876543210', 'Shivamogga'),
('prash123', 'prashwitha@gmail.com', 'Prashwitha Sanil', 'ISE Graduate', 'prash123', '+919123456789', 'Bengaluru'),
('shilpa123', 'shilpa@gmail.com', 'Shilpa Sharma', 'CSE Graduate', 'shilpa123', '+919234567890', 'Noida'),
('shubha123', 'shubha@gmail.com', 'Shubha Y', 'ECE Graduate', 'shubha123', '+919345678901', 'Sira');

-- ============================================
-- Table: course
-- ============================================
CREATE TABLE course (
    courseID INT NOT NULL PRIMARY KEY,
    courseName VARCHAR(100) NOT NULL,
    instituteID INT NOT NULL,
    FOREIGN KEY (instituteID) REFERENCES institute(instituteID) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO course (courseID, courseName, instituteID) VALUES
(101, 'Java Full Stack Development', 1),
(102, 'Python Data Science', 1),
(103, 'Web Development', 2),
(104, 'Machine Learning', 2),
(105, 'Cloud Computing', 3),
(106, 'DevOps Engineering', 3),
(107, 'Cybersecurity', 4),
(108, 'Mobile App Development', 4);

-- ============================================
-- Table: faculty
-- ============================================
CREATE TABLE faculty (
    facultyID INT NOT NULL PRIMARY KEY,
    facultyName VARCHAR(100) NOT NULL,
    instituteID INT NOT NULL,
    FOREIGN KEY (instituteID) REFERENCES institute(instituteID) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO faculty (facultyID, facultyName, instituteID) VALUES
(1001, 'Dr. Rajesh Kumar', 1),
(1002, 'Prof. Anita Sharma', 1),
(1003, 'Dr. Suresh Patel', 2),
(1004, 'Prof. Meena Gupta', 2),
(1005, 'Dr. Vijay Singh', 3),
(1006, 'Prof. Lakshmi Iyer', 3),
(1007, 'Dr. Arun Reddy', 4),
(1008, 'Prof. Kavita Nair', 4);

-- ============================================
-- Table: admissionrequest
-- ============================================
CREATE TABLE admissionrequest (
    requestID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    userID VARCHAR(20) NOT NULL,
    courseID INT NOT NULL,
    requestDate DATE NOT NULL,
    status BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (userID) REFERENCES student(userID) ON DELETE CASCADE,
    FOREIGN KEY (courseID) REFERENCES course(courseID) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO admissionrequest (userID, courseID, requestDate, status) VALUES
('kish123', 101, '2024-01-15', TRUE),
('prathi123', 102, '2024-01-16', FALSE),
('prash123', 103, '2024-01-17', TRUE),
('shilpa123', 104, '2024-01-18', FALSE),
('shubha123', 105, '2024-01-19', TRUE);

-- ============================================
-- Table: feedback
-- ============================================
CREATE TABLE feedback (
    feedbackID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    userID VARCHAR(20) NOT NULL,
    instituteID INT NOT NULL,
    description TEXT,
    feedbackDate DATE NOT NULL,
    FOREIGN KEY (userID) REFERENCES student(userID) ON DELETE CASCADE,
    FOREIGN KEY (instituteID) REFERENCES institute(instituteID) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO feedback (userID, instituteID, description, feedbackDate) VALUES
('kish123', 1, 'Excellent training program! The instructors are very knowledgeable.', '2024-02-01'),
('prathi123', 1, 'Great learning experience. The course content is well-structured.', '2024-02-02'),
('prash123', 2, 'Very satisfied with the training. Highly recommend!', '2024-02-03'),
('shilpa123', 2, 'Good infrastructure and supportive staff.', '2024-02-04'),
('shubha123', 3, 'The practical sessions were very helpful.', '2024-02-05');

-- ============================================
-- Verification Queries
-- ============================================
-- Run these to verify the data was inserted correctly:

-- SELECT 'Admin Count:' as Info, COUNT(*) as Count FROM admin;
-- SELECT 'Institute Count:' as Info, COUNT(*) as Count FROM institute;
-- SELECT 'Student Count:' as Info, COUNT(*) as Count FROM student;
-- SELECT 'Course Count:' as Info, COUNT(*) as Count FROM course;
-- SELECT 'Faculty Count:' as Info, COUNT(*) as Count FROM faculty;
-- SELECT 'Admission Request Count:' as Info, COUNT(*) as Count FROM admissionrequest;
-- SELECT 'Feedback Count:' as Info, COUNT(*) as Count FROM feedback;

-- ============================================
-- Login Credentials for Testing
-- ============================================
-- Admin Login:
--   Username: admin
--   Password: admin123
--
-- Student Logins:
--   Username: kish123    | Password: kishore123
--   Username: prathi123  | Password: prathi123
--   Username: prash123   | Password: prash123
--   Username: shilpa123  | Password: shilpa123
--   Username: shubha123  | Password: shubha123
--
-- Institute Logins:
--   ID: 1 | Password: AIT123
--   ID: 2 | Password: BIT123
--   ID: 3 | Password: CIT123
--   ID: 4 | Password: DIT123
-- ============================================
