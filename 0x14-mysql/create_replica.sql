-- create a new user for the replica server
-- The name of the new user should be replica_user, with the host name
-- set to %, and can have whatever password you’d like
CREATE USER 'replica_user'@'%' IDENTIFIED BY '1234567890';
GRANT REPLICATION SLAVE ON *.* TO 'replica_user'@'%';
FLUSH PRIVILEGES;
