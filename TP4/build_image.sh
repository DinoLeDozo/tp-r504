#!/bin/bash

# Construire l'image Docker avec le Dockerfile nommé Dockerfile1
docker build -f Dockerfile2 -t im-tp4 .

# Afficher la taille de l'image Debian 11 (de base)
echo "Taille de l'image de base debian:11 :"
docker image ls debian:11 --format "table {{.Repository}}\t{{.Tag}}\t{{.Size}}"

# Afficher la taille de l'image construite im-tp4
echo "Taille de l'image construite im-tp4 :"
docker image ls im-tp4 --format "table {{.Repository}}\t{{.Tag}}\t{{.Size}}"
