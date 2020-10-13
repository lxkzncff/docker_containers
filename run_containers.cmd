docker network create --subnet 10.0.3.0/26 --gateway 10.0.3.1 --ip-range 10.0.3.0/26 --driver=bridge --attachable --label my_network network2

start docker run -it --name=mynginx-network --net network2 --ip=10.0.3.2 -p 3985:80 nginx 

start docker run -it --name=myapache-network --net network2 --ip=10.0.3.3 --restart unless-stopped httpd 

start docker run -it --name=mypg-network --net network2 --ip=10.0.3.4 -e POSTGRES_PASSWORD=password postgres 

pause

curl localhost:3985

pause


