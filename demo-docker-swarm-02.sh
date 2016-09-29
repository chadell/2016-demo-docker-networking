clear
echo -e "\e[33mDEMO SWARM + OVERLAY DOCKER in DOCKER-02\e[0m"
read

echo -e "\e[33mChecking the docker networks with <sudo docker network ls>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
sudo docker network ls
read

echo -e "\e[33mChecking the swarm cluster with <sudo docker node ls>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
sudo docker node ls
read
echo -e "\e[33mJoining the swarm cluster with <sudo docker swarm join --token tokenid 192.168.100.101:2377>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
echo -e "\e[33mIntroduce the tokenid: \e[0m"
read tokenid
sudo docker swarm join --token $tokenid 192.168.100.101:2377
read

echo -e "\e[33mChecking the swarm cluster with <sudo docker node ls>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
sudo docker node ls
read

echo -e "\e[33mChecking the docker networks with <sudo docker network ls>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
sudo docker network ls
read

echo -e "\e[33mTime to move back to DOCKER-01...\e[0m"
read

echo -e "\e[33mChecking the docker networks with <sudo docker network ls>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
sudo docker network ls
read

echo -e "\e[33mTime to move back to DOCKER-01...\e[0m"
read

echo -e "\e[33mChecking the service  <sudo docker service ls>\e[0m"
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

echo -e "\e[33mEND of the DEMO\e[0m"

