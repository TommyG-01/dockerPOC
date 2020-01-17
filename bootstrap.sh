
#!/bin/bash
  sudo apt-get update -y | tee -a /home/ubuntu/bootstrap.log
  sudo apt install docker.io -y | tee -a /home/ubuntu/bootstrap.log
  sudo systemctl start docker | tee -a /home/ubuntu/bootstrap.log
  sudo systemctl enable docker | tee -a /home/ubuntu/bootstrap.log
  docker --version | tee -a /home/ubuntu/bootstrap.log
  sudo usermod -aG docker ubuntu
  sudo apt install -y maven | tee -a /home/ubuntu/bootstrap.log
  git clone -b v2.1.3.RELEASE --single-branch --depth 1 https://github.com/spring-projects/spring-boot.git /home/ubuntu/spring-boot | tee -a /home/ubuntu/bootstrap.log
  sleep 5
  echo SLEEEEPPPIIIING >> /home/ubuntu/bootstrap.log
  echo >> /home/ubuntu/bootstrap.log
  sudo mvn -f /home/ubuntu/spring-boot/spring-boot-samples/spring-boot-sample-web-ui/pom.xml clean install | tee -a /home/ubuntu/bootstrap.log
  sudo mvn -f /home/ubuntu/spring-boot/spring-boot-samples/spring-boot-sample-web-static/pom.xml clean install | tee -a /home/ubuntu/bootstrap.log
  echo done >> /home/ubuntu/bootstrap.log
  git clone https://github.com/TommyG-01/dockerPOC.git /home/ubuntu/POC/ | tee -a /home/ubuntu/bootstrap.log
  echo cloned >> /home/ubuntu/bootstrap.log
  sudo cp /home/ubuntu/spring-boot/spring-boot-samples/spring-boot-sample-web-ui/target/*jar /home/ubuntu/POC/web-ui.jar
  sudo cp /home/ubuntu/spring-boot/spring-boot-samples/spring-boot-sample-web-static/target/*war /home/ubuntu/POC/web-static.war
  echo copied >> /home/ubuntu/bootstrap.log
  sudo curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose | tee -a /home/ubuntu/bootstrap.log
  sudo chmod +x /usr/local/bin/docker-compose | tee -a /home/ubuntu/bootstrap.log
  sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose | tee -a /home/ubuntu/bootstrap.log
  docker-compose --version | tee -a /home/ubuntu/bootstrap.log
  sudo docker-compose --file /home/ubuntu/POC/docker-compose.yaml up
