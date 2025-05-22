#!/bin/bash

echo "Vérification des connexions réseau actives..."
echo "=============================================="
echo "Proto | Adresse locale | Adresse distante | État | PID/Programme"
echo "---------------------------------------------------------------"

# Vérifie si netstat est installé
if ! command -v netstat &> /dev/null; then
    echo "netstat n'est pas installé. Installation de net-tools..."
    sudo apt install net-tools -y
fi

netstat -tulnp

echo "=============================================="
