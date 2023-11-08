Jfrog installation documentation - https://jfrog.com/artifactory/install/

1. Create a new amazon linux EC2 server of t2.medium type
2. Add the repository for adding jfrog

_wget -O jfrog-artifactory-pro.tar.gz "https://releases.jfrog.io/artifactory/artifactory-pro/org/artifactory/pro/jfrog-artifactory-pro/[RELEASE]/jfrog-artifactory-pro-[RELEASE]-linux.tar.gz"_

3. Extract the archive

_tar -xvzf jfrog-artifactory-pro.tar.gz_

4. Start the artifactory service

_./artifactory-pro_/app/bin/artifactoryctl start\*

5. Update the instance security group rules to allow access on port 8082

6. Access the jfrog application on below URL

http:<public-ip-for-instance>:8082
