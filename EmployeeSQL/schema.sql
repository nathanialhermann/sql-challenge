drop table if exists departments;
drop table if exists dept_emp;
drop table if exists dept_managers;
drop table if exists employees;
drop table if exists salaries;
drop table if exists titles;

-- titles table
create table titles ( 
	title_id varchar(10) unique primary key,
	title varchar(30) not null
);
-- employees table 
create table employees (
	emp_no int primary key not null,
	emp_title varchar(10) not null,
	birth_date date not null,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	sex varchar (2) not null,
	hire_date date not null
);
-- salaries table
create table salaries (
	emp_no int primary key not null,
	foreign key (emp_no) references employees(emp_no),
	salary int not null
);
-- departments table
create table departments (
	dept_no varchar(5) primary key not null,
	dept_name varchar(30) not null
);
-- employees/departments table
create table dept_emp (
	emp_no int not null,
	dept_no varchar(10) not null,
    foreign key (emp_no) references employees(emp_no),
    foreign key (dept_no) references departments(dept_no)
);
-- deparments/managers table
create table dept_manager (
	dept_no varchar(10) not null,
 	emp_no int not null,
	foreign key (dept_no) references departments(dept_no),
 	foreign key (emp_no) references employees(emp_no)
);
