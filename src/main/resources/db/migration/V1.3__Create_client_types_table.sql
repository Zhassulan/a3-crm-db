create table if not exists client_types
(
    id integer PRIMARY KEY,
    title varchar(255) not null,
    created timestamp not null default now(),
    modified timestamp not null default  now()
);

CREATE SEQUENCE IF NOT EXISTS seq_client_types
    AS bigint
    INCREMENT BY 1
    MINVALUE 1
    OWNED BY client_types.id;

insert into client_types (id, title) values (nextval('seq_client_types'), 'Физическое лицо');
insert into client_types (id, title) values (nextval('seq_client_types'), 'Юридическое лицо');