#!/bin/bash

echo "Criando diretórios..."

sudo mkdir /publico
sudo mkdir /devops
sudo mkdir /suporte

echo "Criando grupos..."

sudo groupadd GRP_SUP
sudo groupadd GRP_DEV

echo "Criando usuários..."

sudo useradd carlos -c "Carlos da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_DEV
sudo useradd maria -c "Maria da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_DEV
sudo useradd joao -c "joao da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_DEV

sudo useradd debora -c "debora da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SUP
sudo useradd sebastiana -c "Sebastiana da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SUP
sudo useradd roberto -c "Roberto da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SUP

echo "Permissões dos diretórios..."

sudo chown root:GRP_DEV /devops
sudo chown root:GRP_SUP /suporte

sudo chmod 770 /devops
sudo chmod 770 /suporte
sudo chmod 777 /publico