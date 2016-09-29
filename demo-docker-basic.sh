clear
echo -e "\e[33mDEMO DEFAULT DOCKER NETWORK CONFIG\e[0m"
read

echo -e "\e[33mChecking the network interfaces with <ip link>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
ip link
read

echo -e "\e[33mChecking the ip addressing with <ip -o -4 a>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
ip -o -4 a
read

echo -e "\e[33mChecking the NAT configuration with <sudo iptables -t nat -L>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
sudo iptables -t nat -L
read

echo -e "\e[33mRunning a web server container <docker sudo docker run -d -p 180:80 tutum/hello-world>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
sudo docker run -d -p 180:80 tutum/hello-world
read

echo -e "\e[33mChecking the app it's working <curl http://localhost:180>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
curl http://localhost:180
read

echo -e "\e[33mChecking the NAT configuration changes with <sudo iptables -t nat -L>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
sudo iptables -t nat -L
read

echo -e "\e[33mChecking the Docker0 state after one container attached with <ip addr | grep docker0>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
ip addr | grep docker0
read

echo -e "\e[33mChecking the network interfaces with <ip link>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
ip link
read

echo -e "\e[33mChecking the VEth peering with <ethtool -S vethid>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
echo -e "\e[33mPlease, introduce the vethid: \e[0m"
read vethid
ethtool -S $vethid
read

echo -e "\e[33mChecking container id <sudo docker ps>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
sudo docker ps
read

echo -e "\e[33mGetting into the network container with <sudo docker exec -i -t containerid /bin/sh>\e[0m"
echo -e "\e[33m*********************************************************************\e[0m"
echo -e "\e[33mPlease, introduce the containerid: \e[0m"
read containerid
sudo docker exec -i -t $containerid /bin/sh

echo -e "\e[33mEND of the DEMO\e[0m"

