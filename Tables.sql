drop table Finance;

create table Finance(
    PaymentID Integer primary key not null,
    Income Float,
    Salary_Given Float,
    Electricity_Bill Float,
    Food_Bill Float,
    Repair_Costs Float,
    Taxes Float
);

drop table FeedBack;
drop table student;
drop table Pays;
drop table Student_Contact_Details;
drop table food_Pref;

create table food_Pref(
    RegNo Integer primary key not null,
    Semester char(1) not null check(Semester in ('1','2','3','4','5','6','7','8')),
    FoodPref varchar(20),
    Allergic_To varchar(30)
);

create table Student_Contact_Details(
    RegNo Integer primary key not null,
    Student_Phone_No Integer,
    Parent_Phone_No Integer,
    Email_ID varchar(30) unique
);

create table Pays(
    RegNo Integer primary key not null,
    Pays Float,
    foreign key (RegNo) references Finance
);

create table student(
    First_Name varchar(10),
    Middle_Name varchar(10),
    Last_Name varchar(20),
    RegNo Integer primary key not null,
    DOB DATE,
    Sex char(1) not null check(Sex in ('M','F','O')),
    Semester char(1) not null check(Semester in ('1','2','3','4','5','6','7','8')),
    Block_No varchar(10),
    Parent_F_Name varchar(10),
    Parent_L_name varchar(10),
    foreign key(RegNo) references Food_Pref on delete set null, 
    foreign key(RegNo) references Student_Contact_Details on delete set null,
    foreign key(RegNo) references Pays on delete set null
);

create table FeedBack(
    RegNo Integer primary key not null,
    Suggestion varchar(100),
    foreign key (RegNo) references student
);

drop table Works_For;
drop table Employee;
drop table Gives_Salary;
drop table Employee_Contact_Details;

create table Employee_Contact_Details(
    EmpID Integer primary key not null,
    Phone_No Integer unique
);

create table Gives_Salary(
    EmpID Integer primary key not null,
    Salary Float,
    foreign key (EmpID) references Finance
);

create table Employee(
    EmpID Integer primary key not null,
    First_Name varchar(10),
    Middle_Name varchar(10),
    Last_Name varchar(10),
    Sex char(1) not null check (Sex in ('M','F','O')),
    DOB DATE,
    Date_of_joining DATE,
    Occupation varchar(20),
    foreign key(EmpID) references Employee_Contact_Details on delete set null,
    foreign key(EmpID) references Gives_Salary on delete set null
);

create table Works_For(
    WorkerID Integer not null,
    ManagerID Integer not null,
    primary key (ManagerID,WorkerID),
    foreign key (ManagerID) references Employee on delete cascade,
    foreign key (WorkerID) references Employee
);

drop table Wastage;
drop table Food_Ration;

create table Food_Ration(
    FoodID Integer primary key not null,
    FoodItem varchar(20),
    Quantity_Kgs Integer,
    Total_Cost Integer,
    foreign key (FoodID) references Finance
);

create table Wastage(
    FoodID Integer primary key not null,
    Wastage_Kgs Integer,
    foreign key(FoodID) references Food_Ration
);

drop table Menu;

create table Menu(
    Day varchar(10) primary key,
    BreakFast varchar2(1000),
    Lunch varchar2(1000),
    Snacks varchar2(1000),
    Dinner varchar2(1000)
);




