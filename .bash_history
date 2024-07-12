sudo usermod -a -G docker chanampa
su - chanampa
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202407_Recu/script_Precondicion.sh
source  ~/.bashrc  && history -a
source ~/.bashrc
ls
ls RTA_Examen_20240712
sudo visudo -f /etc/sudoers.d/usuario
sudo fdisk -l
sudo fdisk /devsdc
sudo fdisk /dev/sdc
sudo pvcreate /dev/sdc1
sudo pvcreate /dev/sdc5
sudo pvcreate /dev/sdc6
sudo pvcreate /dev/sdc7
sudo pvs
sudo fdisk /dev/sdd
sudo pvcreate /dev/sdd5
sudo vgcreate vg_datos /dev/sdc5 /dev/sdc6
sudo vgcreate vg_temp /dev/sdc7 /dev/sdd5
sudo vgs
sudo fdisk /dev/sde
sudo mkswap /dev/sde1
sudo mkswap /dev/sde5
sudo swapon /dev/sde5
free -h
sudo lvcreate -L +10M vg_datos -n lv_docker
sudo vgs
sudo lvcreate -l +100%FREE vg_datos -n lv_multimedia 
sudo vgs
sudo lvcreate -l +100%FREE vg_temp -n lv_swap
sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo swapon /dev/mapper/vg_temp-lv_swap
free -h
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_multimedia
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
cd /var/lib/docker
ll
sudo systemctl restart docker
ll
sudo ll
ls
sudo systemctl status docker
ll
cd ..
pwd
ls
cd home
ls
cd chanampa
ls
mkdir /Multimedia/
sudo mkdir /Multimedia/
sudo mount /dev/mapper/vg_datos-lv_multimedia /Multimedia/
sudo lsblk -f
history
echo history >> Rta_Examen_20240712/Punto_A.sh
echo history >> RTA_Examen_20240712/Punto_A.sh
ls
cd /usr/local/bin/
vim chanampa_check_URL.sh
ls
ll
cd ..
ls
cd home
cd chanampa
pwd
ls
cd UTN-FRA_SO_Examenes/202407_Recu/bash_script/
ls
vim Lista_URL.txt 
cd 
pwd
cd /usr/local/bin
sudo vim chanampa_check_URL.sh
cd
ls
history
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202407_Recu/
ls
cd docker
ls
cd web
ls
vim index.html
cd ..
ls
vim dockerfile
vim docker-compose.yml
ls
cd web
ls
cd file
ls
vim info.txt
cpu_model=$(grep -m 1 'model name' /proc/cpuinfo | awk -F: '{print $2}')
cat cpu_model=$(grep -m 1 'model name' /proc/cpuinfo | awk -F: '{print $2}')
cat grep -m 1 'model name' /proc/cpuinfo | awk -F: '{print $2}')
cat grep -m 1 'model name' /proc/cpuinfo | awk -F: '{print $2}'
sudo cat grep -m 1 'model name' /proc/cpuinfo | awk -F: '{print $2}'
cat grep -m 1 'model name' /proc/cpuinfo | awk -F: '{print $2}'
cat grep 'model name' /proc/cpuinfo | awk -F: '{print $2}'
cat /proc/cpuinfo | grep -i proce | awk -F ':' '{print"marca"$1}'
comando : cat /proc/cpuinfo | grep -i proce | tail -n1
cat /proc/cpuinfo | grep -i proce | tail -n1
cat /proc/cpuinfo | grep -i proce | tail -n1 | awk -F ':' '{print$2}'
echo "CPU Modelo: $(/proc/cpuinfo | grep -i proce | tail -n1 | awk -F ':' '{print$2}') >> info.txt
echo "CPU Modelo: $(/proc/cpuinfo | grep -i proce | tail -n1 | awk -F ':' '{print$2}') >> info.txt
sudo echo "CPU Modelo: $(/proc/cpuinfo | grep -i proce | tail -n1 | awk -F ':' '{print$2}')" >> info.txt
cd .
cd ..
ls
cd web
cd ..
ls
cd web
ls
cd ..
ls
cd docker-compose.yml
vim docker-compose.yml
cd ..
ls
cd docker
ls
vim web/file/info.txt
cd ..
echo "CPU Modelo:$(/proc/cpuinfo | grep -i proce | tail -n1 | awk -F ':' '{print$2}')" > docker/web/file/info.txt
sudo echo "CPU Modelo:$(sudo /proc/cpuinfo | grep -i proce | tail -n1 | awk -F ':' '{print$2}')" > docker/web/file/info.txt
sudo echo "CPU Modelo:$(/proc/cpuinfo | grep -i proce | tail -n1 | awk -F ':' '{print$2}')" > docker/web/file/info.txt
/proc/cpuinfo | grep -i proce | tail -n1 | awk -F ':' '{print$2}'
sudo /proc/cpuinfo | grep -i proce | tail -n1 | awk -F ':' '{print$2}'
ls docker
cd docker
docker login -u macarenanchanampa
docker compose up -d
ls
vim docker_compose.yml
docker compose up -d
ls
cd web
ls
cd file
ls
vim info.txt
cd ..
docker build -t macarenanchanampa/web2-chanampa:v1 .
docker push macarenanchanampa/web2-chanampa:v1
docker image list
ls
vim dockerfile
docker build -t macarenanchanampa/web2-chanampa:v1 .
docker compose up -d
cd ..
ls 202407_Recu/
cd 202407_Recu/
cd ansible
ls
cd roles
ls
cd 2PRecuperatorio/
ls
cd tasks
ls
vim main.yml
cd ..
ls
mkdir templates
vim 2PRecuperatorio.j2
cd ..
ls
cd 2PRecuperatorio
ls
cd vars
ls
vim main.yml
cd templates
cd ..
cd templates
ls
vim 2PRecuperatorio
cd ..
ansible-galaxy role init instala-tools_chanampa
ls
cd instala-tools_chanampa
ls
cd tasks
ls
vim main.yml
cd ..
ls
vim playbook.yml
ls
cd inventory/
ls
cd hosts
cd host_vars
ls
cd ..
ls
vim ansible.cfg
cd roles
ls
cd instala-tools_chanampa/
ls
cd tests
ls
vim test.yml
cd ..
ls
cd 2PRecuperatorio/
ls
cd tests/
ls
vim test.yml
cd ..
cd
ssh-keygen
ssh-copy-id localhost
cat .ssh/id_rsa.pub >> .ssh/authorized_keys
ssh-copy-id localhost
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202407_Recu/
ls
cd ansible
ansible-playbook -i inventory/hosts playbook.yml --ask-become-pass
ls
vim playbook.yml
ansible-playbook -i inventory/hosts playbook.yml --ask-become-pass
ls
cd roles
ls
cd ..
ls
vim playbook.yml
ansible-playbook -i inventory/hosts playbook.yml --ask-become-pass
cd roles
cd instala-tools_chanampa
ls
cd tasks
ls
vim main.yml
cd ..
ansible-playbook -i inventory/hosts playbook.yml --ask-become-pass
cd roles/instala-tools_chanampa/tasks/
vim main.yml
cd ..
ansible-playbook -i inventory/hosts playbook.yml --ask-become-pass
cd roles/instala-tools_chanampa/tasks/
vim main.yml
cd ..
cd --
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202407_Recu
ls
cd ansible
ansible-playbook -i inventory/hosts playbook.yml --ask-become-pass
cd roles
ls
cd instala-tools_chanampa/
ls
cd tasks
ls
vim main.yml
cd ..
ls
vim playbook.yml
ansible-playbook -i inventory/hosts playbook.yml --ask-become-pass
ls
vim playbook.yml
ansible-playbook -i inventory/hosts playbook.yml --ask-become-pass
vim playbook.yml
cd roles
cd instala-tools_chanampa/
cd tasks/
ls
vim main.yml
cd ..
ansible-playbook -i inventory/hosts playbook.yml --ask-become-pass
vim roles/instala-tools_chanampa/tasks/main.yml
ansible-playbook -i inventory/hosts playbook.yml --ask-become-pass
cd ..
ls
cd docker
docker compose up -d
ls
docker_compose.yml
vim docker_compose.yml
docker build -t macarenanchanampa/web2-chanampa:v1 .
sudo lsblk -f
sudo lvs
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo systemctl restart docker
sudo mount /dev/mapper/vg_datos-lv_multimedia /Multimedia/
sudo fdisk -f
sudo fdisk -l
free -h
sudo swapon /dev/sde5
sudo swapon /dev/mapper/vg_temp-lv_swap
sudo lsblk -f
ls
sudo fdisk /dev/sde
sudo pvcreate /dev/sde6
sudo vgextend /dev/sde6
sudo vgextend vg_datos /dev/sde6
sudo lvextend -l +100%FREE vg_datos /dev/sde6
sudo lvextend -l +100%FREE vg_datos /dev/mapper/vg_datoslv_docker
sudo lvextend -l +100%FREE vg_datos /dev/mapper/vg_datos-lv_docker
sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker
ls
cd UTN-FRA_SO_Examenes/
ls
cd 202407_Recu/
ls
cd docker
docker login -u macarenanchanampa
docker build -t macarenanchanampa/web2-chanampa:v1 .
docker push macarenanchanampa/web2-chanampa:v1
docker compose up -d
ls
vim docker-compose.yml
docker compose up -d
vim docker-compose.yml
docker compose up -d
vim docker-compose.yml
docker compose up -d
vim docker-compose.yml
docker compose up -d
ls
vim dockerfile
ls
cd web
ls
vim index.html
docker compose up
docker compose up -d
docker image list
cd ..
ls
cd 202407_Recu/
ls
cd bash_script
cd ..
sudo chmod 755 bash_script
cd bash_script
ls
cd ..
cd .
cd ..
cd /usr/local/bin/
ls
./chanampa_check_URL.sh UTN-FRA_SO_Examenes/202407_Recu/bash_script/Lista_URL.txt
cd 
ls
ll
pwd
cd UTN-FRA_SO_Examenes/
ls
cd 202407_Recu/
ls
cd
git init
git status
