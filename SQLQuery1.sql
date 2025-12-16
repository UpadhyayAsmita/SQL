CREATE TABLE Department (
    dept_num INT IDENTITY(100,1) PRIMARY KEY,  
    dept_name VARCHAR(50) NOT NULL UNIQUE,
    location VARCHAR(50) NOT NULL
);

INSERT INTO Department (dept_name, location) VALUES
('HR', 'Kathmandu'),
('IT', 'Lalitpur'),
('Finance', 'Bhaktapur'),
('Marketing', 'Kathmandu'),
('Operations', 'Pokhara');

EXEC sp_rename 'Department.dept_num', 'dept_id', 'COLUMN';


SELECT * FROM Department;

ALTER TABLE Department
DROP COLUMN dept_id;

ALTER TABLE Department
ADD dept_head VARCHAR(50);

UPDATE Department
SET dept_head = 'Sumana Shrestha'
WHERE dept_name = 'HR';

UPDATE Department
SET dept_head = 'Sita Koirala'
WHERE dept_name = 'IT';

UPDATE Department
SET dept_head = 'Anil Thapa'
WHERE dept_name = 'Finance';

UPDATE Department
SET dept_head = 'Maya Gurung'
WHERE dept_name = 'Marketing';

UPDATE Department
SET dept_head = 'Ramesh Adhikari'
WHERE dept_name = 'Operations';

Select * from Department ;