show databases;

use dbocker_db;

show tables;

create table test_table (
    no int(11) not null auto_increment,
    name varchar(20) not null,
    email varchar(100),
    gender char(1),
    age int(3),
    constraint test_table_pk primary key (no)
);

describe test_table;

insert into test_table value (null, 'user1', 'user1@example.com', 'M', 26);
insert into test_table value (null, 'user2', 'user2@example.com', 'M', 35);
insert into test_table value (null, 'user3', 'user3@example.com', 'F', 17);

select *
from test_table;



# use mysql;
#
# select current_user();
#
# show grants for 'root'@'%';
# show grants for 'dbocker'@'%';
