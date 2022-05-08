create table if not exists clients
(
    id integer PRIMARY KEY,
    client_type_id integer not null REFERENCES client_types (id),
    address_id integer not null REFERENCES addresses (id),
    title varchar(255) not null ,
    created date not null default now(),
    modified date not null default now()
);

CREATE UNIQUE INDEX idx_clients_client_type_id ON clients (client_type_id);

CREATE SEQUENCE IF NOT EXISTS seq_clients
    AS bigint
    INCREMENT BY 1
    MINVALUE 1
    OWNED BY clients.id;