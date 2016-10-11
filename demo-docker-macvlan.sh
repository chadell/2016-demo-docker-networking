clear
echo -e "\e[33mDEMO MACVLAN in DOCKER-01\e[0m"
read

echo -e "\e[33mEnabling promiscuous mode in eth1<sudo ip link set eth1 promisc on>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
sudo ip link set eth1 promisc on
read

echo -e "\e[33mChecking the docker networks with <sudo docker network ls>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
sudo docker network ls
read

echo -e "\e[33mCreating the docker macvlan network <sudo docker network create -d macvlan --subnet=192.168.100.0/24 -o parent=eth1 pub_net>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
sudo docker network create -d macvlan --subnet=192.168.100.0/24 -o parent=eth1 pub_net
read

echo -e "\e[33mChecking the docker networks with <sudo docker network ls>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
sudo docker network ls
read

echo -e "\e[33mRunning a container... <sudo docker run -td alpine /bin/sh>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
sudo docker run -td alpine /bin/sh
read

echo -e "\e[33mChecking container id <sudo docker ps>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
sudo docker ps
read

echo -e "\e[33mConnecting the docker container to the macvlan network <sudo docker network connect pub_net  containerid>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
echo -e "\e[33mPlease, introduce the containerid: \e[0m"
read containerid
sudo docker network connect pub_net $containerid
read

echo -e "\e[33mGetting into the network container with <sudo docker exec -i -t containerid /bin/sh>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
echo -e "\e[33mPlease, introduce the containerid: \e[0m"
read containerid
sudo docker exec -i -t $containerid /bin/sh

echo -e "\e[33mEnd of demo\e[0m"
read
