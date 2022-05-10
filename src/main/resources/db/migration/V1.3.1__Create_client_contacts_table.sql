create table if not exists client_contacts
(
    id         integer PRIMARY KEY,
    address_id integer     not null REFERENCES addresses (id),
    email      varchar(35) null,
    logo_image_id    bigint,
    phone      varchar(50),
    created    timestamp   not null default now(),
    modified   timestamp   not null default now()
);

CREATE INDEX idx_client_contacts_address_id ON client_contacts (address_id);
CREATE INDEX idx_client_contacts_logo_image_id ON client_contacts (logo_image_id);

CREATE SEQUENCE IF NOT EXISTS seq_client_contacts
    AS bigint
    INCREMENT BY 1
    MINVALUE 1
    OWNED BY client_contacts.id;