create table graph
( 
  point1 varchar not null,
  point2 varchar not null,
  cost integer not null default 0
  );

insert into graph values ('a', 'b', 10);
insert into graph values ('a', 'c', 15);
insert into graph values ('a', 'd', 20);
insert into graph values ('b', 'a', 10);
insert into graph values ('b', 'c', 35);
insert into graph values ('b', 'd', 25);
insert into graph values ('c', 'a', 15);
insert into graph values ('c', 'b', 35);
insert into graph values ('c', 'd', 30);
insert into graph values ('d', 'a', 20);
insert into graph values ('d', 'b', 25);
insert into graph values ('d', 'c', 30);
