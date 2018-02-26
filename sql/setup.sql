INSTALL SONAME 'ha_tokudb';
INSTALL SONAME 'ha_oqgraph';
INSTALL SONAME 'ha_connect';
INSTALL SONAME 'ha_rocksdb';
INSTALL SONAME 'auth_pam';

CREATE ROLE IF NOT EXISTS 'admin';
GRANT ALL PRIVILEGES ON *.* TO 'admin' WITH GRANT OPTION;
CREATE USER IF NOT EXISTS 'vagrant'@'%' IDENTIFIED VIA pam USING 'mariadb';
CREATE USER IF NOT EXISTS 'vagrant'@'localhost' IDENTIFIED VIA pam USING 'mariadb';
GRANT 'admin' TO 'vagrant'@'%';
GRANT 'admin' to 'vagrant'@'localhost';
SET DEFAULT ROLE 'admin' FOR 'vagrant'@'%';
SET DEFAULT ROLE 'admin' FOR 'vagrant'@'localhost';

FLUSH PRIVILEGES;