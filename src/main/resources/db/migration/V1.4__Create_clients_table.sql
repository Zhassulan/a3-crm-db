create table if not exists clients
(
    id                 integer PRIMARY KEY,
    client_type_id     integer      not null REFERENCES client_types (id),
    client_contacts_id integer      not null REFERENCES client_contacts (id),
    title              varchar(255) not null,
    created            timestamp    not null default now(),
    modified           timestamp    not null default now()
);

CREATE INDEX idx_clients_client_type_id ON clients (client_type_id);
CREATE INDEX idx_clients_client_contacts_id ON clients (client_contacts_id);

CREATE SEQUENCE IF NOT EXISTS seq_clients
    AS bigint
    INCREMENT BY 1
    MINVALUE 1
    OWNED BY clients.id;