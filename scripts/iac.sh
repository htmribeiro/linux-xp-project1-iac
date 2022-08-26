#!/bin/bash

echo "============================"
echo ">>>> Criando diretórios <<<<"
echo "============================"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criandos com sucesso!"

echo "============================"
echo ">>>>>> Criando grupos <<<<<<"
echo "============================"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados com sucesso!"

echo "============================"
echo ">>>>> Criando usuários <<<<<"
echo "============================"

useradd carlos -c"Carlos Alexandre" -m -s /bin/bash -p $(openssl passwd "Senha123") -G GRP_ADM
useradd maria -c"Maria Joaquin" -m -s /bin/bash -p $(openssl passwd "Senha123") -G GRP_ADM
useradd joao -c"Benedito João dos Santos Silva Beleleu" -m -s /bin/bash -p $(openssl passwd "Senha123") -G GRP_ADM

useradd debora -c"Debora Debinha" -m -s /bin/bash -p $(openssl passwd "Senha123") -G GRP_VEN
useradd sebastiana -c"Sebastiana Celestina" -m -s /bin/bash -p $(openssl passwd "Senha123") -G GRP_VEN
useradd roberto -c"Roberto da Silva" -m -s /bin/bash -p $(openssl passwd "Senha123") -G GRP_VEN

useradd josefina -c"Josefina de Jesus" -m -s /bin/bash -p $(openssl passwd "Senha123") -G GRP_SEC
useradd amanda -c"Amanda Ribeiro" -m -s /bin/bash -p $(openssl passwd "Senha123") -G GRP_SEC
useradd rogerio -c"Rogerio Santana" -m -s /bin/bash -p $(openssl passwd "Senha123") -G GRP_VEN

echo "Usuários criados com sucesso!"
