#!/bin/bash

# Actualizar paquetes del sistema
sudo apt update -y
sudo apt upgrade -y

# Instalar dependencias necesarias
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# Agregar la clave GPG oficial de Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Agregar el repositorio oficial de Docker
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Actualizar la lista de paquetes con el repositorio de Docker
sudo apt update -y

# Instalar Docker
sudo apt install -y docker-ce docker-ce-cli containerd.io

# Habilitar Docker para que se inicie en el arranque
sudo systemctl enable docker
sudo systemctl start docker

# Verificar la instalación
docker --version

# Agregar el usuario actual al grupo docker (opcional, para no usar sudo con Docker)
sudo usermod -aG docker $USER

echo "Docker ha sido instalado correctamente. Reinicia la sesión para aplicar los cambios del grupo docker."
