#!/bin/bash

echo "INFRAESTRUTURA COMO CÓDIGO"
echo 'Um desafio de código do bootcamp Imersão Linux'
echo "........................................................"

echo "Criando grupos de usuários..."

groupadd GRP_ADM
echo "Grupo GRP_ADM criado"
group GRP_VEN
echo "Grupo GRP_VEN criado"
groupadd GRP_SEC
echo "Grupo GRP_SEC criado"
echo "==========================================================================================="
echo ''

echo "Criando usuários a adicionando-os aos seus respectivos grupos..."
echo ''

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
echo 'Usuário "carlos" criado.'
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
echo 'Usuário "maria" criado.'
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
echo 'Usuário "joao" criado.'
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
echo 'Usuário "debora" criado.'
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
echo 'Usuário "sebastiana" criado.'
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
echo 'Usuário "roberto" criado.'
useradd josefino -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
echo 'Usuário "josefino" criado.'
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
echo 'Usuário "amanda" criado.'
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt senha123) --G GRP_SEC
echo 'Usuário "rogerio" criado.'
echo "==========================================================================================="
echo ''
echo "Criando pastas..."

mkdir /publico
echo 'Pasta "publico" criada.' 
mkdir /adm
echo 'Pasta "adm" criada.'
mkdir /ven
echo 'Pasta "ven" criada.'
mkdir /sec
echo 'Pasta "sec" criada.'  

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
echo "==========================INFRAESTRUTURA CRIADA COM SUCESSO======================================="


