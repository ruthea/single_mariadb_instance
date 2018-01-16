INSTALL SONAME 'ha_tokudb';
INSTALL SONAME 'ha_oqgraph';
INSTALL SONAME 'ha_connect';
INSTALL SONAME 'ha_rocksdb';
INSTALL SONAME 'auth_pam';
GRANT ALL PRIVILEGES ON *.* TO 'vagrant'@'%' IDENTIFIED VIA pam USING 'mariadb'; 
GRANT ALL PRIVILEGES ON *.* TO 'vagrant'@'localhost' IDENTIFIED VIA pam USING 'mariadb'; 