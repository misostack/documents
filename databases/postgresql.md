# PostgreSQL

## Query Logs

1. Add Extension

```bash
CREATE EXTENSION pg_stat_statements;
SELECT *
FROM pg_available_extensions
WHERE
    name = 'pg_stat_statements' and
    installed_version is not null;

#
cat etc/postgresql/10/main/postgresql.conf | grep shared_preload
nano etc/postgresql/10/main/postgresql.conf
shared_preload_libraries = 'pg_stat_statements'
systemctl restart postgres
```

2. Enable log_state for database

```bash
ALTER DATABASE {DBNAME} SET log_statement = 'all';
```

3. Allow postgre admin can access via login/password auth

```bash
ALTER USER postgres with password '123456';
```

4. Run Query

```bash
\c postgres
SELECT * FROM pg_stat_statements;
```
