-- Creating mysql user "holberton_user" with passwd "projectcorrection280hbtn"
-- Also granting user replication priveleges
CREATE USER 'holberton_user'@'localhost' IDENTIFIED BY 'projectcorrection280hbtn';
GRANT REPLICATION CLIENT ON *.* TO 'holberton_user'@'localhost';
