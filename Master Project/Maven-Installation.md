1. _sudo wget https://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo_
2. _sudo sed -i s/\$releasever/6/g /etc/yum.repos.d/epel-apache-maven.repo_
3. _sudo yum install -y apache-maven_
4. _mvn -version_
