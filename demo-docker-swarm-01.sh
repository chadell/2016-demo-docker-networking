clear
echo -e "\e[33mDEMO SWARM + OVERLAY DOCKER in DOCKER-01\e[0m"
read

echo -e "\e[33mChecking the docker networks with <sudo docker network ls>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
sudo docker network ls
read

echo -e "\e[33mCreating the docker swarm cluster with <sudo docker swarm init --advertise-addr eth1:2377>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
sudo docker swarm init --advertise-addr eth1:2377
read

echo -e "\e[33mChecking the docker networks with <sudo docker network ls>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
sudo docker network ls
read

echo -e "\e[33mChecking the swarm cluster with <sudo docker node ls>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
sudo docker node ls
read

echo -e "\e[33mGetting the token to add new managers to the cluster with <sudo docker swarm join-token -q manager>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
sudo docker swarm join-token -q manager
read

echo -e "\e[33mTime to move to DOCKER-02...\e[0m"
read

echo -e "\e[33mLet's create a new overlay network with <sudo docker network create -d overlay --subnet 10.10.10.0/24 my-network>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
sudo docker network create -d overlay --subnet 10.10.10.0/24 my-network
read

echo -e "\e[33mChecking the docker networks with <sudo docker network ls>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
sudo docker network ls
read

echo -e "\e[33mTime to move back to DOCKER-02...\e[0m"
read

echo -e "\e[33mLet's do something useful creating a service in the cluster over our network with <sudo docker service create --name my-service --replicas 4 --network my-network nginx>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
sudo docker service create --name my-service --replicas 4 --network my-network nginx
read

echo -e "\e[33mChecking the service bootstraping... <sudo docker service ls>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
sudo docker service ls
read

echo -e "\e[33mChecking the service bootstraping... <sudo docker service ls>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
sudo docker service ls
read

echo -e "\e[33mChecking the containers... <sudo docker ps>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
sudo docker ps
read

echo -e "\e[33mChecking my-network containers... <sudo docker network inspect my-network>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
sudo docker network inspect my-network
read

echo -e "\e[33mTime to move back to DOCKER-02...\e[0m"
read



