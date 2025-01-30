#!/bin/bash

# Crear el grupo Docker (si no existe)
sudo groupadd docker

# Añadir el usuario actual al grupo docker
sudo usermod -aG docker $USER

# Aplicar los cambios del grupo sin necesidad de reiniciar sesión
newgrp docker

# Habilitar los servicios Docker y containerd para que se inicien al arrancar el sistema
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

# Iniciar los servicios Docker y containerd
sudo systemctl start docker.service
sudo systemctl start containerd.service

echo "Docker se ha configurado correctamente. Recuerda cerrar sesión y volver a iniciarla para aplicar los cambios del grupo."
