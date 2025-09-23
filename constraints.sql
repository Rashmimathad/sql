
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age >= 18),
    department VARCHAR(50) NOT NULL
);
INSERT INTO Students VALUES
(1, 'Amit Sharma', 'amit@example.com', 20, 'CSE'),
(2, 'Riya Verma', 'riya@example.com', 22, 'ECE'),
(3, 'Karan Singh', 'karan@example.com', 19, 'ME'),
(4, 'Neha Patel', 'neha@example.com', 21, 'CSE'),
(5, 'Arjun Yadav', 'arjun@example.com', 23, 'EEE'),
(6, 'Simran Kaur', 'simran@example.com', 20, 'IT'),
(7, 'Rahul Nair', 'rahul@example.com', 24, 'CSE'),
(8, 'Priya Das', 'priya@example.com', 22, 'ECE'),
(9, 'Vikram Rao', 'vikram@example.com', 25, 'ME'),
(10, 'Anita Mishra', 'anita@example.com', 21, 'IT');
