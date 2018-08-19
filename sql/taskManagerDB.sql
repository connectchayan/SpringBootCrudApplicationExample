
create database taskManagerDB;


create table parent_task_tab(
   parent_id INT NOT NULL AUTO_INCREMENT,
   parent_task VARCHAR(100) NOT NULL,
   parent_task_desc VARCHAR(200) NOT NULL,
   
   PRIMARY KEY ( parent_id )
);

CREATE TABLE IF NOT EXISTS task_tab 
(task_id INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
task_name varchar(100) NOT NULL ,
task_desc varchar(255) NOT NULL ,
parent_id INT NOT NULL,         
start_date datetime NOT NULL,
end_date datetime NOT NULL,
is_archived boolean NOT NULL DEFAULT FALSE,
priority INT NOT NULL,
FOREIGN KEY (parent_id) REFERENCES 
parent_task_tab(parent_id)
ON UPDATE CASCADE 
ON DELETE RESTRICT);

insert into parent_task_tab values (1,'Requirement Gathering','Gathering Requirement');
insert into parent_task_tab values (2,'Application Designing','Application Designing');
insert into parent_task_tab values (3,'Unit Testing','Unit Testing');
insert into parent_task_tab values (4,'Maintanence','Maintanence');

select * from parent_task_tab;

INSERT INTO task_tab VALUES (1,'JAVA MT Layer','KT on EJB and WS Implementation',1,curtime(),curtime() + INTERVAL 10 HOUR,0,15);

INSERT INTO task_tab VALUES (2,'DB Layer','KT Stored Proc Implementation',1,curtime(),curtime() + INTERVAL 8 HOUR,0,10);

INSERT INTO task_tab VALUES (3,'Business KT','KT Underwriting Implementation',1,curtime(),curtime() + INTERVAL 10 HOUR,0,17);

INSERT INTO task_tab VALUES (4,'JAVA MT Layer design','Discussion on EJB and WS Implementation',2,curtime(),curtime() + INTERVAL 3 HOUR,0,8);

INSERT INTO task_tab VALUES (5,'DB Layer','KT Stored Proc Implementation',2,curtime(),curtime() + INTERVAL 5 HOUR,0,5);

INSERT INTO task_tab VALUES (6,'Business KT','Mapping of XSD fields with present DB structure',2,curtime(),curtime() + INTERVAL 12 HOUR,0,25);


select * from task_tab;

UPDATE `taskmanagerdb`.`task_tab`
SET
`task_name` = 'DB Layer Design'
WHERE task_id=5;

UPDATE `taskmanagerdb`.`task_tab`
SET
parent_id = 2
WHERE task_id=5;