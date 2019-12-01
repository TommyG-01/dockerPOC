git clone https://github.com/spring-projects/spring-boot.git

sudo apt-get update -y

#install docker:
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common

sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
   
   
# Install Maven
sudo apt install -y maven
#mvn -version

# getting the springboot applications
git clone -b v2.1.3.RELEASE --single-branch --depth 1 https://github.com/spring-projects/spring-boot.git /tmp/spring-boot

sudo mvn -f /tmp/spring-boot/spring-boot-samples$ cd spring-boot-sample-web-ui/pom.xml clean install


