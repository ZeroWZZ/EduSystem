create database education;
use education;
create table administrator(
name varchar(20) primary key,
password varchar(20) not null
);

insert into administrator values("admin","123");
create table student(
id varchar(12) primary key,
name varchar(20) not null,
password varchar(20) not null,
gender varchar(3),
batch varchar(20)
);
select * from administrator;
select * from student;
INSERT INTO Student VALUES
('2017204426', '王涵玉', '123456', N'女', N'17软件J01'),
('2017204434', '丁一', '123456', N'男', N'17软件J01'),
('2017204439', '董向嘉', '123456', N'男', N'17软件J01'),
('2017204441', '冷凯', '123456', N'男', N'17软件J01'),
('2017204442', '汪星源', '123456', N'女', N'17软件J01'),
('2017204445', '金世浩', '123456', N'男', N'17软件J01'),
('2017204446', '谷威', '123456', N'男', N'17软件J02'),
('2017204458', '李昊天', '123456', N'男', N'17软件J02'),
('2017204462', '杜凌霄', '123456', N'男', N'17软件J02'),
('2017204464', '张一帆', '123456', N'男', N'17软件J02'),
('2017204469', '孟祥龙', '123456', N'男', N'17软件J03'),
('2017204480', '刘甜甜', '123456', N'女', N'17软件J03'),
('2017204510', '魏琪晨', '123456', N'女', N'17软件J03'),
('2017204524', '李自家', '123456', N'男', N'17软件J03');

create table teacher(
id varchar(12) primary key,
name varchar(20) not null,
password varchar(20) not null,
gender varchar(3),
professional varchar(30),
birthday varchar(20),
email varchar(20)
);
select * from teacher;
INSERT INTO teacher VALUES
('0001', '马洪吉', '123456', '男', "软件外包","1990","0001@qq.com"),
('0002', '耿航'  , '123456', '男', "软件外包","1991","0002@qq.com"),
('0003', '马宇航', '123456' ,'男', "软件外包","1992","0003@qq.com");

create table batch(
name varchar(20) primary key,
studentCount int,
professional varchar(30)
);
select * from batch;
INSERT INTO batch VALUES
('17软件J01' ,6, "软件外包"),
('17软件J02' ,4, "软件外包"),
('17软件J03' ,4, "软件外包");

create table professional(
name varchar(60) primary key,
faculty varchar(60),
remark varchar(300)
);
select * from professional;
INSERT INTO professional VALUES
('软件外包' ,"数据科学与软件工程学院" , "编码成就未来！！！"),
('临床医学' ,"医学院" , "临床专业，高薪！！！"),
('汉语言文学' ,"文学院" , "语言是一门艺术！！！"),
('数字媒体技术' ,"数据科学与软件工程学院" , "数字媒体好啊！真得好！啊！");

create table course(
id varchar(4) primary key,
name varchar(30) not null,
type varchar(30),
faculty varchar(30),
weight int
);
select * from course;
INSERT INTO course VALUES
('1111',"Java基础","必修","数据科学与软件工程学院" ,4),
('1122',"微积分","必修","数据科学与软件工程学院" ,6),
('1112',"数据结构与算法","必修","数据科学与软件工程学院",5);

create table professionalPlan(
id int primary key auto_increment,
professional varchar(30),
courseid varchar(4) ,
year int,
term varchar(3)
);
select * from professionalPlan;
INSERT INTO professionalPlan VALUES
(1,'软件外包',"1111",1,"秋"),
(2,'软件外包',"1112",1,"春");

create table score(
id int primary key auto_increment,
stuid varchar(12),
courseid varchar(4),
score int,
pass varchar(3)
);
select * from score;
INSERT INTO score VALUES
(1,'2017204434',"1111",60,"是");

create table coursePlan(
id int primary key auto_increment,
batch varchar(30),
courseid varchar(4),
teacherid varchar(12)
);
select * from coursePlan;
insert into coursePlan(batch ,courseid,teacherid ,week,count ,classroomType)  values
("17软外J01","1111","0099"),
("17软外J01","1112","0001"),
("17软外J01","1113","0002"),
("17软外J01","1122","0003"),
("17软外J02","1111","0099"),
("17软外J02","1112","0001"),
("17软外J02","1113","0002"),
("17软外J02","1122","0003");
