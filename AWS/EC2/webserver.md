# Install Nginx on ubuntu instance

````
sudo -i
apt update
apt install nginx -y
systemctl start nginx
systemctl enable nginx
systemctl status nginx
````


# Install Httpd on amazon instance
````
sudo -i
yum update
yum install httpd -y
systemctl start httpd
systemctl enable httpd
````
