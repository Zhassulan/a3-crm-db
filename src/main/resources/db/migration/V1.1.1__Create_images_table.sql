create table if not exists images
(
    id       integer PRIMARY KEY,
    path     varchar(500) not null,
    created  timestamp    not null default now(),
    modified timestamp    not null default now()
);

CREATE SEQUENCE IF NOT EXISTS seq_images
    AS bigint
    INCREMENT BY 1
    MINVALUE 1
    OWNED BY images.id;
