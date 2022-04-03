#!/bin/bash
# ANGEL TORRES PÉREZ
#

clear

echo -n "Diguem el nom de la carpeta que vols comptar fitxers: "
read nom

function compte(){
	cd $nom
	for i in $(ls -C1)
	do
		if [[ -r $i ]]
		then
			echo "L'usuari que ha executat el fitxer [[ $i ]] SI que te permissos de lectura. "
			cont=$(( $cont + 1 ))
		else
			echo "L'usuari que ha executat el fitxer [[ $i ]] NO que te permissos de lectura. "
		fi

	done
	echo "Un total de $cont fitxers tenen permissos de lectura."
}
compte
exit 0
