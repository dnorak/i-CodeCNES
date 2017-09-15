#!/bin/bash
echo "--------------------"
echo "- SH.MET.LimitAWK  -"
echo "-    OK            -"
echo "--------------------"

# - Traitement du fichier des mouvements, impression de chaque 
# - mouvement avec son type et calcul du solde bancaire
cat mvts.txt | awk 'BEGIN { print "Start AWK command" }
					/^A/ {print "A---", NR }
					/^F/ {print "F---", NR }
					/^![A-F]/ {print "Default---", NR }
					END { print "End AWK command" }'