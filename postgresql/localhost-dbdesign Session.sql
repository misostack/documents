-- BEGIN;

-- -- ADD UUID EXTENSION
-- CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- DO $$
-- BEGIN
--   IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'admin_user_role') THEN
--       CREATE TYPE admin_user_role AS ENUM ('sadmin', 'admin', 'supervisor');
--   END IF;
-- END
-- $$;

-- DO $$
-- BEGIN
--   IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'admin_user_status') THEN
--       CREATE TYPE admin_user_status AS ENUM ('active', 'inactive');
--   END IF;
-- END
-- $$;

-- DROP TABLE IF EXISTS admin_user;

-- CREATE TABLE IF NOT EXISTS
-- admin_user (
--   id uuid DEFAULT uuid_generate_v4(),
--   email VARCHAR(360) NOT NULL,
--   first_name VARCHAR(60) NOT NULL,
--   last_name VARCHAR(60) NOT NULL,
--   password VARCHAR(60) NOT NULL,
--   role admin_user_role NOT NULL,
--   status admin_user_status NULL DEFAULT 'active'
-- );

-- ALTER TABLE admin_user
-- ADD PRIMARY KEY(id);

-- ALTER TABLE table_name DROP CONSTRAINT primary_key_constraint;

-- CREATE UNIQUE INDEX CONCURRENTLY admin_user_email 
-- ON admin_user (email);

-- ALTER TABLE admin_user
-- ADD CONSTRAINT unique_email
-- UNIQUE USING INDEX admin_user_email;

-- COMMIT;

CREATE TABLE t_data (a int, b int, c int);

INSERT INTO t_data 
        SELECT random()*100000, 
            random()*100000, 
            random()*100000 
        FROM generate_series(1, 1000000);

-- CREATE INDEX idx_data ON t_data(a, b, c);

CREATE INDEX idx_data ON t_data(c);

ANALYZE t_data;

explain analyze SELECT * 
       FROM   t_data 
       WHERE  c = 10 
              AND b = 20 
              AND a = 10;


-- Gather (cost=1000.00..13697.77 rows=1 width=12)	
-- Workers Planned: 2	
-- -> Parallel Seq Scan on t_data (cost=0.00..12697.67 rows=1 width=12)	
-- Filter: ((c = 10) AND (a = 10) AND (b = 20))

