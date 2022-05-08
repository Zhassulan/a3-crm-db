create table if not exists clients
(
    id integer,
    type_id integer,
    title varchar(255),
    created date,
    modified date
)