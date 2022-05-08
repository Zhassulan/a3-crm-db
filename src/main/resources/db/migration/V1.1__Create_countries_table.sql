create table if not exists countries
(
    id         integer PRIMARY KEY,
    code       varchar(10),
    title      varchar(255) not null,
    phone_code varchar(5),
    created    date         not null default now(),
    modified   date         not null default now()
);

CREATE SEQUENCE IF NOT EXISTS seq_countries
    AS bigint
    INCREMENT BY 1
    MINVALUE 1
    OWNED BY countries.id;