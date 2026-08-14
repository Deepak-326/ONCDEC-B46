





# Docker Installation  (amazon-linux)

````
sudo yum update -y
sudo yum install docker -y 
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ec2-user
newgrp docker
sudo chmod 777 /var/run/docker.sock
````

---
# Docker Installation  (ubuntu)

````
sudo apt update -y
sudo apt install docker.io -y 
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ubuntu
newgrp docker
sudo chmod 777 /var/run/docker.sock
````



# Docker Architecture

<img width="1024" height="610" alt="image" src="https://github.com/user-attachments/assets/33c23d73-87a5-4d16-b19b-3262df7a6902" />


# Docker basic commands


````
docker pull nginx
````
````
docker images
````
````
docker run -itd  --name c1  -p 80:80  nginx
````
````
docker ps
````
````
  docker pull abhipraydh96/yoga
  docker images
  docker run -itd --name yg -p 81:80 abhipraydh96/yoga:latest
  docker ps
  docker inspect yg
  docker logs yg
  docker exec -it yg /bin/bash
  docker ps
  docker stop yg
  docker ps -a
  docker rm yg
  docker ps -a
  docker images
  docker rmi -f abhipraydh96/yoga:latest
  docker images
````
