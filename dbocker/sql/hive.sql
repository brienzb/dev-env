show databases;

show tables;

create table test_table (
    name string,
    email string,
    gender char(1),
    age int
)
partitioned by (ds string);

describe test_table;

alter table test_table add partition (ds='test_date');

insert into test_table partition (ds='test_date') values ('user1', 'user1@example.com', 'M', 26);
insert into test_table partition (ds='test_date') values ('user2', 'user2@example.com', 'M', 35);
insert into test_table partition (ds='test_date') values ('user3', 'user3@example.com', 'F', 17);

select *
from test_table;
