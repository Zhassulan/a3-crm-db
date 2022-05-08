create table if not exists client_types
(
    id integer PRIMARY KEY,
    title varchar(255) not null,
    created date not null default now(),
    modified date not null default  now()
)