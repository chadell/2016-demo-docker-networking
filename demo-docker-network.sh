clear
echo -e "\e[33mDEMO DEFAULT DOCKER NETWORK COMMANDS\e[0m"
read

echo -e "\e[33mChecking the docker networks with <sudo docker network ls>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
sudo docker network ls
read

echo -e "\e[33mRunning a container... <sudo docker run -td alpine /bin/sh>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
sudo docker run -td alpine /bin/sh
read

echo -e "\e[33mChecking the docker network bridge config with <sudo docker network inspect bridge>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
sudo docker network inspect bridge
read

echo -e "\e[33mChecking container id <sudo docker ps>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
sudo docker ps
read

echo -e "\e[33mDisconnecting the docker container from the bridge <sudo docker network disconnect bridge containerid>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
echo -e "\e[33mPlease, introduce the containerid: \e[0m"
read containerid
sudo docker network disconnect bridge $containerid
read

echo -e "\e[33mChecking the docker network bridge config with <sudo docker network inspect bridge>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
sudo docker network inspect bridge

echo -e "\e[33mEND of the DEMO\e[0m"
