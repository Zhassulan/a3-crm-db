SET search_path TO a3crm,public;

create table if not exists addresses
(
    id integer PRIMARY KEY,
    city_id integer REFERENCES cities (id),
    address varchar(255) not null,
    created date not null default now(),
    modified date not null default now()
);

CREATE UNIQUE INDEX idx_addresses_city_id ON addresses (city_id);

CREATE SEQUENCE IF NOT EXISTS seq_addresses
    AS bigint
    INCREMENT BY 1
    MINVALUE 1
    OWNED BY addresses.id;