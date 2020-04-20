CREATE TYPE admin_user_roles AS ENUM ('sadmin', 'admin');

CREATE TABLE IF NOT EXISTS admin_user (
  id uuid DEFAULT uuid_generate_v4(),
  email VARCHAR(360) NOT NULL,
  first_name VARCHAR(60) NOT NULL,
  last_name VARCHAR(60) NOT NULL,
  user_roles admin_user_roles[] NOT NULL,
);

-- ALTER TABLE admin_user 

CREATE TABLE IF NOT EXISTS example (
  id uuid DEFAULT uuid_generate_v4(),
  a_boolean BOOLEAN NOT NULL,
  the_char CHAR(1) NOT NULL,
  the_varchar VARCHAR(20) NOT NULL,
  the_text TEXT NULL DEFAULT "",
  the_date DATE NOT NULL,
  
)