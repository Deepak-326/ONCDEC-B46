# 📘 Dockerfile 

## 🔹 What is a Dockerfile?
A **Dockerfile** is a text document that contains a set of instructions used to build a Docker image.  
It automates the process of creating images by defining the environment, dependencies, and commands needed to run an application inside a container.


---

## 🔹 Components of a Dockerfile

1. **FROM**  
   - Specifies the base image for the container.  
   - Example:  
     ```dockerfile
     FROM ubuntu:20.04
     ```

2. **MAINTAINER / LABEL**  
   - Defines metadata about the image creator.  
   - Example:  
     ```dockerfile
     LABEL maintainer="abhipraydh96@gmail.com"
     ```

3. **RUN**  
   - Executes commands inside the image while building.  
   - Example:  
     ```dockerfile
     RUN apt-get update && apt-get install -y nginx
     ```

4. **COPY / ADD**  
   - Copies files from host machine to the image.  
   - Example:  
     ```dockerfile
     COPY index.html /usr/share/nginx/html/
     ```

5. **WORKDIR**  
   - Sets the working directory inside the container.  
   - Example:  
     ```dockerfile
     WORKDIR /app
     ```

6. **EXPOSE**  
   - Defines the port number the container listens on.  
   - Example:  
     ```dockerfile
     EXPOSE 80
     ```

7. **CMD**  
   - Provides the default command to run when the container starts.  
   - Example:  
     ```dockerfile
     CMD ["nginx", "-g", "daemon off;"]
     ```

8. **ENTRYPOINT**  
   - Configures a container to run as an executable.  
   - Example:  
     ```dockerfile
     ENTRYPOINT ["nginx"]
     ```

---
🧩 Dockerfile Instructions Explained
````
        # FROM: define base image
        # LABEL author="abhipray"
        # RUN: executes commands during image build
        # WORKDIR: sets working dir inside cont
        # COPY: copies file from local machine to container
        # ADD:  same as copy but it can download  from internet
        # EXPOSE: shows which port cont will use
        # ENV: runtime variable
        # ARG: build time variable

        # CMD: (low priority) runs the app 
        # ENTRYPOINT :(high priority) same as CMD
````


📝 Create index.html

Create an index.html file with this content:
````
<h1>Hello Docker</h1>

````
---
```Dockerfile
# Use Amazon Linux as base image
FROM amazonlinux
# Install httpd package
RUN yum update -y 
RUN yum install -y httpd
# Copy custom index.html
COPY index.html /var/www/html/index.html
# Expose port 80
EXPOSE 80
# Run httpd in foreground
CMD ["httpd", "-D", "FOREGROUND"]
```
---

▶️ How to Build & Run

🔹 1. Build Image
````
docker build -t my-webserver .
````
🔹 2. Run Container
````
docker run -d -p 80:80 my-webserver
````
🔹 3. Verify

Open your browser →
👉 http://localhost

You should see Hello Docker.
---
## 🔹 Example 2: Dockerfile for **Nginx on Ubuntu**

```Dockerfile
# Use Ubuntu as base image
FROM ubuntu:20.04

# Install Nginx
RUN apt-get update && \
    apt-get install -y nginx 

# Copy custom index.html
COPY index.html /var/www/html/index.html

# Expose port 80
EXPOSE 80

# Run Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
```

---
## 🔹 Example 3: Dockerfile for **Tomcat Server on Ubuntu**

```Dockerfile
FROM ubuntu:20.04
RUN apt update -y
RUN apt install  openjdk-11-jdk -y
WORKDIR /opt/tomcat
EXPOSE 8080 
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.90/bin/apache-tomcat-9.0.90.tar.gz  /opt/tomcat
RUN tar -xzf apache-tomcat-9.0.90.tar.gz -C /opt/tomcat
ADD https://s3-us-west-2.amazonaws.com/studentapi-cit/student.war /opt/tomcat/apache-tomcat-9.0.90/webapps/
CMD ["apache-tomcat-9.0.90/bin/catalina.sh","run"]
```
---
## 🔹 Example 4: Dockerfile for **Database**
```Dockerfile
FROM mariadb
WORKDIR /usr/local/bin/
ENV MARIADB_ROOT_PASSWORD=1234
COPY student-rds.sql /docker-entrypoint-initdb.d/
CMD ["mariadbd"]
```
---
## 🔹 Example 5: Dockerfile for **python app**
```Dockerfile
FROM python:3.11-alpine

WORKDIR /app

COPY main.py .

CMD ["python", "main.py"]
```
---
## 🔹 Example 5: Dockerfile for **nodejs**
```Dockerfile
FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3000
CMD ["npm", "start"]
```
---
