CREATE TABLE Employee (
    emp_id INT IDENTITY(1,1) PRIMARY KEY,     
    e_name VARCHAR(50) NOT NULL,             
    age INT CHECK (age >= 18 AND age <= 65),  
    city VARCHAR(50) NOT NULL,                
    contact_info VARCHAR(15) NOT NULL UNIQUE, 
    dept_key INT,                              
    salary DECIMAL(10,2) CHECK (salary >= 0), 
    gender CHAR(1) CHECK (gender IN ('M','F','O')), 
    FOREIGN KEY (dept_key) REFERENCES Department(dept_id) 
);

INSERT INTO Employee (e_name, age, city, contact_info, dept_key, salary, gender) VALUES
('Asha Shrestha', 28, 'Kathmandu', '9801001001', 100, 50000, 'F'),
('Aman Koirala', 32, 'Lalitpur', '9801001002', 101, 60000, 'M'),
('Anu Thapa', 26, 'Bhaktapur', '9801001003', 102, 55000, 'F'),
('Ramesh Adhikari', 40, 'Pokhara', '9801001004', 104, 70000, 'M'),
('Sita Gurung', 30, 'Kathmandu', '9801001005', 103, 65000, 'F'),
('Ram Shrestha', 35, 'Lalitpur', '9801001006', 101, 72000, 'M'),
('Maya Karki', 29, 'Kathmandu', '9801001007', 100, 48000, 'F'),
('Binod Thapa', 38, 'Pokhara', '9801001008', 104, 68000, 'M'),
('Laxmi Sharma', 27, 'Bhaktapur', '9801001009', 102, 53000, 'F'),
('Suman Khatri', 33, 'Kathmandu', '9801001010', 103, 61000, 'M'),
('Kiran Tamang', 31, 'Chitwan', '9801001011', 100, 55000, 'M'),
('Sunita Lama', 25, 'Kathmandu', '9801001012', 101, 47000, 'F'),
('Rohit Rai', 36, 'Lalitpur', '9801001013', 102, 72000, 'M'),
('Neha Adhikari', 29, 'Bhaktapur', '9801001014', 103, 58000, 'F'),
('Sujan Shrestha', 41, 'Pokhara', '9801001015', 104, 80000, 'M'),
('Priya Koirala', 27, 'Kathmandu', '9801001016', 100, 49000, 'F'),
('Manish Thapa', 34, 'Lalitpur', '9801001017', 101, 65000, 'M'),
('Anita Gurung', 28, 'Kathmandu', '9801001018', 102, 54000, 'F'),
('Bikash Sharma', 39, 'Pokhara', '9801001019', 103, 71000, 'M'),
('Sushma Lama', 26, 'Bhaktapur', '9801001020', 104, 56000, 'F'),
('Rajan Adhikari', 37, 'Chitwan', '9801001021', 100, 69000, 'M'),
('Kumari Thapa', 30, 'Kathmandu', '9801001022', 101, 60000, 'F'),
('Deepak Shrestha', 32, 'Lalitpur', '9801001023', 102, 72000, 'M'),
('Sabina Karki', 28, 'Bhaktapur', '9801001024', 103, 58000, 'F'),
('Prakash Tamang', 42, 'Pokhara', '9801001025', 104, 85000, 'M'),
('Sanjana Sharma', 27, 'Kathmandu', '9801001026', 100, 50000, 'F'),
('Bishal Rai', 35, 'Lalitpur', '9801001027', 101, 67000, 'M'),
('Rekha Gurung', 29, 'Kathmandu', '9801001028', 102, 59000, 'F'),
('Sunil Khatri', 38, 'Pokhara', '9801001029', 103, 72000, 'M'),
('Rita Lama', 26, 'Bhaktapur', '9801001030', 104, 54000, 'F'),
('Niraj Thapa', 33, 'Chitwan', '9801001031', 100, 61000, 'M'),
('Mina Sharma', 30, 'Kathmandu', '9801001032', 101, 60000, 'F'),
('Suresh Adhikari', 36, 'Lalitpur', '9801001033', 102, 75000, 'M'),
('Prabina Karki', 28, 'Bhaktapur', '9801001034', 103, 58000, 'F'),
('Hari Shrestha', 40, 'Pokhara', '9801001035', 104, 80000, 'M'),
('Sabita Lama', 27, 'Kathmandu', '9801001036', 100, 52000, 'F'),
('Rajan Koirala', 34, 'Lalitpur', '9801001037', 101, 66000, 'M'),
('Pooja Gurung', 29, 'Kathmandu', '9801001038', 102, 59000, 'F'),
('Binod Sharma', 38, 'Pokhara', '9801001039', 103, 71000, 'M'),
('Sushma Thapa', 26, 'Bhaktapur', '9801001040', 104, 56000, 'F'),
('Rajesh Lama', 37, 'Chitwan', '9801001041', 100, 70000, 'M'),
('Anita Sharma', 30, 'Kathmandu', '9801001042', 101, 60000, 'F'),
('Bikash Koirala', 32, 'Lalitpur', '9801001043', 102, 73000, 'M'),
('Sabina Shrestha', 28, 'Bhaktapur', '9801001044', 103, 58000, 'F'),
('Suman Tamang', 42, 'Pokhara', '9801001045', 104, 85000, 'M'),
('Mina Lama', 27, 'Kathmandu', '9801001046', 100, 51000, 'F'),
('Prakash Thapa', 35, 'Lalitpur', '9801001047', 101, 67000, 'M'),
('Rekha Gurung', 29, 'Kathmandu', '9801001048', 102, 59000, 'F'),
('Sunil Sharma', 38, 'Pokhara', '9801001049', 103, 72000, 'M'),
('Sita Khatri', 26, 'Bhaktapur', '9801001050', 104, 54000, 'F');

SELECT * FROM Employee;

Select e_name, salary-10000 as new 
from Employee
WHERE salary>40000; 

---UPDATE  Employee
--SET salary = salary -10000
--FROM Employee
--WHERE salary>40000;

--JOINS--
--INNER JOIN--
SELECT  e.emp_id, e.e_name, e.age, e.dept_key, d.location, d.dept_head 
From Employee e
Inner JOIN Department d on d.dept_id = e.dept_key

--OUTER JOIN--
SELECT  e.emp_id, e.e_name, e.age, e.dept_key, d.location, d.dept_head 
From Employee e
LEFT OUTER JOIN Department d on d.dept_id = e.dept_key

SELECT  e.emp_id, e.e_name, e.age, e.dept_key, d.location, d.dept_head 
From Employee e
RIGHT OUTER JOIN Department d on d.dept_id = e.dept_key

---COALESCE--- NVL----
SELECT e_name, 

in (103, 104,105)