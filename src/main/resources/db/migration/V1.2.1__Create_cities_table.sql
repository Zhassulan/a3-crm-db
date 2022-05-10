create table if not exists cities
(
    id integer PRIMARY KEY,
    country_id integer not null REFERENCES countries (id),
    title varchar(255) not null,
    created timestamp not null default now(),
    modified timestamp not null default now()
);

CREATE INDEX idx_cities_country_id ON cities (country_id);

CREATE SEQUENCE IF NOT EXISTS seq_cities
    AS bigint
    INCREMENT BY 1
    MINVALUE 1
    OWNED BY cities.id;

insert into cities (id, country_id, title) values (nextval('seq_cities'), 1, 'Нур-султан');
insert into cities (id, country_id, title) values (nextval('seq_cities'), 1, 'Алматы');
