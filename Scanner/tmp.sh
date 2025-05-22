#!/bin/bash

echo "Nettoyage des fichiers temporaires..."
echo "Avant nettoyage :"
du -sh /tmp

read -p "Voulez-vous supprimer tous les fichiers dans /tmp ? (o/n) : " confirmation

if [[ $confirmation == [oO] || $confirmation == [oO][uU][iI] ]]; then
    sudo rm -rf /tmp/*
    echo "Fichiers temporaires supprimés."
    echo "Après nettoyage :"
    du -sh /tmp
else
    echo "Nettoyage annulé."
fi
