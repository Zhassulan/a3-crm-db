create table if not exists countries
(
    id integer,
    code varchar(10),
    title varchar(255),
    phone_code varchar(5),
    created date,
    modified date
)