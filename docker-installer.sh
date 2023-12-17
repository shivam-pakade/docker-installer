#!/bin/bash
echo "[root@localhost ~]# for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done"
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
echo "[root@localhost ~]# sudo apt-get update"
sudo apt-get update
echo "[root@localhost ~]# sudo apt-get install ca-certificates curl gnupg"
sudo apt-get install ca-certificates curl gnupg
echo "[root@localhost ~]# sudo install -m 0755 -d /etc/apt/keyrings"
sudo install -m 0755 -d /etc/apt/keyrings
echo "[root@localhost ~]# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "[root@localhost ~]# sudo chmod a+r /etc/apt/keyrings/docker.gpg"
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo "[root@localhost ~]# echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null"
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
echo "[root@localhost ~]# sudo apt-get update"
sudo apt-get update
echo "[root@localhost ~]# sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin"
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
echo "[root@localhost ~]# sudo docker run hello-world"
sudo docker run hello-world
echo "[root@localhost ~]# curl -fsSL https://get.docker.com -o get-docker.sh"
curl -fsSL https://get.docker.com -o get-docker.sh
echo "[root@localhost ~]# sudo sh get-docker.sh"
sudo sh get-docker.sh
