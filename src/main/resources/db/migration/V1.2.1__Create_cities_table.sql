create table if not exists cities
(
    id integer PRIMARY KEY,
    country_id integer not null REFERENCES countries (id),
    title varchar(255) not null,
    created date not null default now(),
    modified date not null default now()
);

CREATE UNIQUE INDEX idx_cities_country_id ON cities (country_id);