#!/bin/bash

echo " "
echo "============================"
echo ">>>> Criando diretórios <<<<"
echo "============================"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo " "
echo "Diretórios criandos com sucesso!"
echo " "

echo "============================"
echo ">>>>>> Criando grupos <<<<<<"
echo "============================"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo " "
echo "Grupos criados com sucesso!"
echo " "

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

echo " "
echo "Usuários criados com sucesso!"
echo " "

echo "============================================="
echo ">>> Especificando os donos dos diretórios <<<"
echo "============================================="

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo " "
echo "Donos dos diretórios especificados com sucesso!"
echo " "

echo "========================================================="
echo ">>> Especificando permissões de acesso aos diretórios <<<"
echo "========================================================="

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

chmod 777 /publico

echo " "
echo "Permissões adicionadas com sucesso!"

echo " "
echo "Fim do script."
echo " "
