create table if not exists client_types
(
    id integer PRIMARY KEY,
    title varchar(255) not null,
    created date not null default now(),
    modified date not null default  now()
);

CREATE SEQUENCE IF NOT EXISTS seq_client_types
    AS bigint
    INCREMENT BY 1
    MINVALUE 1
    OWNED BY client_types.id;