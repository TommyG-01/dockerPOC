Basic information

The PoC combines AWS, Terraform and Docker. 
Docker Host is built as AWS EC2 instance and terraform was used to:
- build the EC2 insance,
- create correct Security Groups (allow traffic on port 9000),
- execute the bootstrap script.

Once terraform code is applied, the Spring Boot example applications should be up and running within a few minutes. 


The bootstrap script is attached. The tasks done by bootstrap script:
- apply the latest OS packages,
- install, enable and start Docker,
- download Docker Compose,
- download and install Maven,
- pull Spring Boot sample applications from Github,
- build the applications using Maven,
- download this Github repository to /home/ubuntu/POC directory
- build the containers using downloaded docker-compose file


The applications are built locally on Docker Host server and copied to the containers as part of their creation. 

To see the running applications:

EC2-DNS-ADDRESS:9000
and
EC2-DNS-ADDRESS:9000/app-web-ui


