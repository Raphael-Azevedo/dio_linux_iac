#!/bin/bash

echo "Criando diretórios do sistema..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os grupos de usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuarios do sistema..."

useradd carlos -c " Usuário do GRUPO_ADM " -s /bin/bash -m -p $(openssl passwd 123) -G GRP_ADM
passwd calos -e

useradd mirian -c " Usuário do GRUPO_ADM " -s /bin/bash -m -p $(openssl passwd 123) -G GRP_ADM
passwd mirian -e

useradd joao -c " Usuário do GRUPO_ADM " -s /bin/bash -m -p $(openssl passwd 123) -G GRP_ADM
passwd joao -e

useradd debora -c " Usuário do GRUPO_VEN " -s /bin/bash -m -p $(openssl passwd 123) -G GRP_VEN
passwd debora -e

useradd sebastiao -c " Usuário do GRUPO_VEN " -s /bin/bash -m -p $(openssl passwd 123) -G GRP_VEN
passwd sebastiao -e

useradd roberto -c " Usuário do GRUPO_VEN " -s /bin/bash -m -p $(openssl passwd 123) -G GRP_VEN
passwd roberto -e

useradd josefina -c " Usuário do GRUPO_SEC " -s /bin/bash -m -p $(openssl passwd 123) -G GRP_SEC
passwd josefina -e

useradd amanda -c " Usuário do GRUPO_SEC " -s /bin/bash -m -p $(openssl passwd 123) -G GRP_SEC
passwd amanda -e

useradd rogerio -c " Usuário do GRUPO_SEC " -s /bin/bash -m -p $(openssl passwd 123) -G GRP_SEC
passwd rogerio -e

echo " Especificando permissões nos diretórios..."

chown root : GRP_ADM /adm
chown root : GRP_VEN /ven
chown root : GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Processo finalizado!"
