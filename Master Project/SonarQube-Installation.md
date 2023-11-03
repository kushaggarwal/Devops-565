1. Create a new EC2 instance with Amazon Linux 2
2. Install Java on it
   $ sudo dnf install java-11-amazon-corretto
   $ sudo dnf install java-11-amazon-corretto-devel
   $ java -version
3. Install postgresSQL
   $ sudo yum install postgresql15 postgresql15-server
4. Initialize database
   $ sudo /usr/bin/postgresql-setup initdb
5. Check the current database status
   $ sudo systemctl status postgresql
6. Change user password
   $ sudo passwd postgres
7. Switch user
   $ su postgres
8. Create a sonar user
   $ createuser sonar
9. Switch postgres terminal
   $ pgsql
10. Update the database for the new user
    postgres=# ALTER USER sonar WITH ENCRYPTED password 'postgres';
    ALTER ROLE
    postgres=# CREATE DATABASE sonarqube OWNER sonar;
    CREATE DATABASE
    postgres=# grant all privileges on DATABASE sonarqube to sonar;
    GRANT
    postgres=# \q
11. Update group and user to access the database
    sudo groupadd sonar
    sudo useradd -c "user to run SonarQube" -d /opt/sonarqube -g sonar sonar
    sudo chown -R sonar:sonar /opt/sonarqube
12. Update the sonar user and password in the below file
    sudo nano /opt/sonarqube/conf/sonar.properties
    cat /opt/sonarqube/conf/sonar.properties
