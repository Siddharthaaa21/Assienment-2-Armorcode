##To demostrate the proficiendy in using docker and jenkins for ci/cd pipeline by automating the deployment of a simple application and managing versioning
##The application is a simple python application that prints out the current time and date
step one is to set up two containers one for jenkins and the other for the application
cmds to add jenkins container
then 
```docker run -d -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home --name jenkins jenkins/jenkins:lts```
then 
```docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword```



secondi sto create hello world application

steps are
1. create a directory for the application
2. create a python file that prints out the current time and date
3. create a docker file that builds the application
4. create a jenkins pipeline that builds the application and pushes it to docker hub
5. create a docker-compose file that pulls the image from docker hub and runs it
6. create a jenkins pipeline that pulls the image from docker hub and runs it
