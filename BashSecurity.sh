#!/bin/bash

# Sécurité Bash - Boîte à outils simple

clear
echo "=============================================="
echo "         BOÎTE À OUTILS DE SÉCURITÉ BASH      "
echo "=============================================="
echo "Outil de sécurité pour les systèmes Linux"
echo "=============================================="
echo ""
echo "Choisissez une option :"
echo "1. Scanner le système avec ClamAV"
echo "2. Vérifier les connexions réseau"
echo "3. Nettoyer les fichiers temporaires"
echo "4. Surveiller les ressources système"
echo "5. Créer une sauvegarde du système"
echo "6. Quitter"
echo ""

read -p "Entrez votre choix [1-6] : " choix

case $choix in
    1)
        echo "Analyse antivirus en cours..."
        bash Scripts/analyse_clamav.sh
        ;;
    2)
        echo "Vérification des connexions réseau..."
        bash Scripts/connexions_reseau.sh
        ;;
    3)
        echo "Nettoyage des fichiers temporaires..."
        bash Scripts/nettoyage_tmp.sh
        ;;
    4)
        echo "Surveillance des ressources système..."
        bash Scripts/surveillance_top.sh
        ;;
    5)
        echo "Création de la sauvegarde..."
        bash Scripts/sauvegarde.sh
        ;;
    6)
        echo "Fermeture de l'outil."
        exit 0
        ;;
    *)
        echo "Option invalide. Veuillez réessayer."
        ;;
esac

echo ""
echo "Appuyez sur Entrée pour revenir au menu principal..."
read
exec $0
