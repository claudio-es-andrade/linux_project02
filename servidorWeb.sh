#!/bin/bash

echo "Atualizando o sistema para preparar o servidor Web..."

echo "Atualizando os repositorios da maquina..."
apt-get update
echo "repositorios atualizados..."
echo "Atualizando os pacotes..."
apt-get upgrade -y
echo "Pacotes atualizados..."
echo "Instalando o Servidor Apache..."
apt-get install apache2 -y
echo "Servidor Apache instalado..."
echo "Instalando o descompactador unzip..."
apt-get install unzip -y
echo "Descompactador instalado..."

echo "Copiar o link do Git para o diretorio temporario..."
echo "Entrando no diretorio TMP... "
cd /tmp
echo "Copiando o link do github para o diretorio..."
wget -c https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Link Copiado..."
echo "Descompactando o arquivo copiado..."
unzip main.zip
echo "Arquivo descompactado..."
echo "Entrando na pasta criada..."
cd linux-site-dio-main
echo "Dentro da pasta criada ..."
echo "Copiando os arquivos para o diretorio /var/www/html..."
cp -R * /var/www/html/
echo "Arquivos copiados..."

echo " Script de instalacao e configuracao do Serivdor Web terminado."
