
# Docker Volume

## create docker volume
````
docker volume create drive
````

## list docker volume 
````
docker volume ls
````
## get vol details
````
docker inspect volume drive
````


## pull image from dockerhub(ubuntu)
````
docker pull ubuntu
````
## Create Cont and Mount Volume
````
docker run -itd --name c1 --mount source=drive,target=/oncdecb31 ubuntu
````
or

````
docker run -itd --name cont1 -v drive:/oncdecb31 ubuntu
````
## list running cont
````
docker ps
````
## login into docker cont
````
docker exec -it c1 /bin/bash
````
````
cd oncdecb31
````
## create files
````
touch index.html error.html style.css
````
## exit from cont

## Create Another Cont and Mount Volume
````
docker run -itd --name c2 --mount source=drive,target=/oncdecb32 ubuntu
````
or 
````
docker run -itd --name cont2 -v drive:/oncdecb32 ubuntu
````
## list running cont
````
docker ps
````
## login into docker cont
````
docker exec -it c2 /bin/bash
````
````
cd oncdecb32
````
````
ls
````
## delete cont and volumes

````
docker rm -f cont1 cont2
````

````
docker volume rm drive
````



<img width="882" height="531" alt="image" src="https://github.com/user-attachments/assets/ef3b2c7e-1ce1-4302-95e2-4e11228647d0" />
