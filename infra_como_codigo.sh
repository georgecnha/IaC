#!/bin/bash

echo "INFRAESTRUTURA COMO CÓDIGO"
echo 'Um desafio de código do bootcamp Imersão Linux'
echo "........................................................"
echo "Criando grupos de usuários..."
groupadd GRP_ADM
echo "Grupo GRP_ADM criado"
groupadd GRP_VEN
echo "Grupo GRP_VEN criado"
groupadd GRP_SEC
echo "Grupo GRP_SEC criado"
echo "==========================================================================================="
echo ''
echo "Criando usuários a adicionando-os aos seus respectivos grupos..."
echo ''
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd josefino -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
echo "==========================================================================================="
echo ''
echo "Criando pastas..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo ''
echo "==========================================================================================="
echo ''
echo "Determinando permissões das pastas..."
echo "Passo 1: Atribuindo donos e grupos..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
echo "Passo 2: Atribuindo Permissões..."
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
echo ''
echo "================================FIM DO SCRIPT======================================="


