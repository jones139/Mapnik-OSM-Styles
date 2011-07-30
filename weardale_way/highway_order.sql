/* 
 * Create a table to define the priority order
 *    of the various highway tags
 */
drop table highway_priorities;

create table highway_priorities (
   priority integer,
   highway  varchar(20)
);

insert into highway_priorities values (1, 'motorway');
insert into highway_priorities values (2, 'motorway-link');
insert into highway_priorities values (3, 'trunk');
insert into highway_priorities values (4, 'trunk-link');
insert into highway_priorities values (5, 'primary');
insert into highway_priorities values (6, 'primary-link');
insert into highway_priorities values (7, 'secondary');
insert into highway_priorities values (8, 'secondary-link');
insert into highway_priorities values (9, 'tertiary');
insert into highway_priorities values (10, 'tertiary-link');
insert into highway_priorities values (11, 'unclassified');
insert into highway_priorities values (12, 'residential');
insert into highway_priorities values (13, 'service');
insert into highway_priorities values (14, 'road');
insert into highway_priorities values (15, 'track');
insert into highway_priorities values (16, 'cycleway');
insert into highway_priorities values (17, 'footway');
insert into highway_priorities values (18, 'path');
insert into highway_priorities values (19, 'steps');


