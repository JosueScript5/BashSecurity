#!/bin/bash

# Obtenir la date du jour pour le nom de la sauvegarde
date_actuelle=$(date +"%Y-%m-%d")
nom_sauvegarde="sauvegarde_$date_actuelle.tar.gz"

# Demander le dossier à sauvegarder
read -p "Chemin du dossier à sauvegarder : " dossier_cible

# Vérifier si le dossier existe
if [ ! -d "$dossier_cible" ]; then
    echo "Erreur : ce dossier n'existe pas !"
    exit 1
fi

echo "Création de la sauvegarde de $dossier_cible..."
tar -czvf "$nom_sauvegarde" "$dossier_cible"

echo "Sauvegarde créée : $nom_sauvegarde"
echo "Taille de la sauvegarde : $(du -h "$nom_sauvegarde" | cut -f1)"
