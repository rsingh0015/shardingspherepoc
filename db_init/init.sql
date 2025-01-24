CREATE DATABASE rug;

\connect rug;
CREATE USER user_rug WITH ENCRYPTED PASSWORD 'password';
ALTER DATABASE rug OWNER TO user_rug;

CREATE SCHEMA schema_poc;
GRANT ALL PRIVILEGES ON SCHEMA schema_poc TO user_rug;

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA schema_poc TO user_rug;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA schema_poc TO user_rug;
GRANT ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA schema_poc TO user_rug;

ALTER DEFAULT PRIVILEGES IN SCHEMA schema_poc GRANT ALL PRIVILEGES ON TABLES TO user_rug;
ALTER DEFAULT PRIVILEGES IN SCHEMA schema_poc GRANT ALL PRIVILEGES ON SEQUENCES TO user_rug;
ALTER DEFAULT PRIVILEGES IN SCHEMA schema_poc GRANT ALL PRIVILEGES ON FUNCTIONS TO user_rug;

GRANT ALL PRIVILEGES ON DATABASE rug TO user_rug ;

CREATE TABLE schema_poc.table_one
(
    id character varying(255),
    cycle_code character varying(255) NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS schema_poc.table_one
    OWNER to user_rug;