#!/bin/bash

echo "Analyse antivirus avec ClamAV..."
echo "=================================="

# Vérifie si ClamAV est installé
if ! command -v clamscan &> /dev/null; then
    echo "ClamAV n'est pas installé. Installation en cours..."
    sudo apt install clamav -y
fi

# Met à jour la base de définitions
echo "Mise à jour de la base de données..."
sudo freshclam

# Lance l'analyse sur /
echo "Analyse du système en cours..."
sudo clamscan -r --bell -i /
