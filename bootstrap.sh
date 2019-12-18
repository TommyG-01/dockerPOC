#git clone https://github.com/spring-projects/spring-boot.git

sudo apt-get update -y

#install docker:
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
echo "==============================================================="
echo "==============================================================="
echo "==============================================================="
echo "COMMAND 1"
echo "==============================================================="
echo "==============================================================="
echo "==============================================================="

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo "==============================================================="
echo "==============================================================="
echo "==============================================================="
echo "COMMAND 2"
echo "==============================================================="
echo "==============================================================="
echo "==============================================================="

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
echo "==============================================================="
echo "==============================================================="
echo "==============================================================="
echo "COMMAND 3"
echo "==============================================================="
echo "==============================================================="
echo "==============================================================="


sudo apt-get install -y docker-ce docker-ce-cli containerd.io
echo "==============================================================="
echo "==============================================================="
echo "==============================================================="
echo "COMMAND 4"
echo "==============================================================="
echo "==============================================================="
echo "==============================================================="   
   
# Install Maven
sudo apt install -y maven
echo "==============================================================="
echo "==============================================================="
echo "Maven installed" 
echo "===============================================================" 
#mvn -version

# getting the springboot applications
git clone -b v2.1.3.RELEASE --single-branch --depth 1 https://github.com/spring-projects/spring-boot.git /home/ubuntu/spring-boot
echo "==============================================================="
echo "==============================================================="
echo "==============================================================="
echo "COMMAND 5"
echo "==============================================================="
echo "==============================================================="
echo "==============================================================="
#sudo mvn -f /home/ubuntu/spring-boot/spring-boot-samples/spring-boot-sample-web-ui/pom.xml clean install

sudo mvn -f /home/ubuntu/spring-boot/spring-boot-samples/spring-boot-sample-web-ui/pom.xml clean install 
sudo cp /home/ubuntu/spring-boot/spring-boot-samples/spring-boot-sample-web-ui/target/*jar . 
sudo cp /home/ubuntu/POC/Dockerfile .
sudo docker build -t web-ui .

