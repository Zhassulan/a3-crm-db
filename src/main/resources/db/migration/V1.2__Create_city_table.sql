create table if not exists cities
(
    id integer,
    country_id integer,
    title varchar(255),
    created date,
    modified date
)