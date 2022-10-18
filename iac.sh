#!/bin/bash

echo "Scrip de criação de estrutura de usuários, diretórios e permissões!!"

echo "Criando diretórios..."

mkdir /publica /adm /ven /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

chmod 777 /publica/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

echo "Criando usuários e adicionado aos grupos correspondentes..."

useradd carlos -c "Carlos da Silva" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM
passwd carlos -e

useradd maria -c "Maria da Silva" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM
passwd maria -e

useradd joao -c "Joao da Silva" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM
passwd joao -e

useradd debora -c "Debora da Silva" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Sebastiana da Silva" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Roberto da Silva" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN
passwd roberto -e

useradd josefina -c "Josefina da Silva" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -c "Amanda da Silva" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC
passwd amanda -e

useradd rogerio -c "Rogerio da Silva" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC
passwd rogerio -e

echo "Procedimento finalizado"

