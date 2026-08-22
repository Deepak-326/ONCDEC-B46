# Docker Network

Docker Network:
1. bridge(default)
2. Host
3. None 
4. MacVlan
5. Overlay

# Create Network
````
docker network create vnet
````
````
docker network ls
````
````
docker pull ubuntu
````
````
docker run -itd --name c1 --network vnet ubuntu
````


# log in into c1
````
apt update
apt install iputils-ping -y
````
````
ping c2
````

# log in into c1
````
apt update
apt install iputils-ping -y
````
````
ping c1
````


# delete cont
````
docker rn -f c1 c2
````

# delete network
````
docker network rm vnet
````
----

# connect network to aleready existing cont

## create cont1 & cont2
````
docker run -itd --name cont1  ubuntu
````
````
docker run -itd --name cont2  ubuntu
````


## connect network to c1 & c2

````
docker network connect vnet cont1
````

````
docker network connect vnet cont2
````

---
<img width="1527" height="598" alt="image" src="https://github.com/user-attachments/assets/37883c21-eda2-4bfe-9955-d49f44a0bc26" />
<img width="892" height="515" alt="image" src="https://github.com/user-attachments/assets/9f5066ed-3f2a-42dd-8e93-1c95f6483cb2" />
<img width="1471" height="372" alt="image" src="https://github.com/user-attachments/assets/d0406a26-092b-4a48-8d33-a81fab74a0f7" />
<img width="1177" height="575" alt="image" src="https://github.com/user-attachments/assets/aabf866b-6980-435e-a56e-ca3ce6bc4770" />
