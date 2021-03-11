create schema local_ghost_blog;
CREATE USER 'legacyroot'@'localhost'IDENTIFIED WITH mysql_native_password;
GRANT ALL PRIVILEGES ON * . * TO 'legacyroot'@'localhost';

-- Generated tables that will be missing primary keys which you will need to manually add:
--  `brute`
--  `migrations_lock`