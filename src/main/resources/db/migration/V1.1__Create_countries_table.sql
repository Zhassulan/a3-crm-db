create table if not exists countries
(
    id         integer PRIMARY KEY,
    code       varchar(10),
    title      varchar(255) not null,
    phone_code varchar(5),
    created    timestamp         not null default now(),
    modified   timestamp         not null default now()
);

CREATE SEQUENCE IF NOT EXISTS seq_countries
    AS bigint
    INCREMENT BY 1
    MINVALUE 1
    OWNED BY countries.id;

insert into countries (id, code, title, phone_code) values (nextval('seq_countries'), 'KZ', 'Казахстан', '+7');