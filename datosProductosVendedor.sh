#!/bin/bash

DATE_LOG=$(date +[%d-%m-%Y-%T])
echo "$DATE_LOG - Inicio"
PWD=`pwd`

user_id=179571326

	curl -X GET https://api.mercadolibre.com/sites/MLA/search?seller_id=$user_id > $PWD/DatosGeneral.json

	
	id="0"
	count=0
	while [ “$id” != “null” ]
	do
		id=$( cat $PWD/DatosGeneral.json | jq -r '.results['$count'] .id')	

		if [ “$id” != “null” ]
		then	

			title=$(cat $PWD/DatosGeneral.json | jq -r '.results['$count'] .title')

			category_id=$(cat $PWD/DatosGeneral.json | jq -r '.results['$count'] .category_id')

    		name=$(curl -X GET https://api.mercadolibre.com/categories/$category_id | jq -r '.name')

    		total="$id | $title | $category_id | $name"

 			echo  $total >> $PWD/Log.txt
		fi

 		((count++))	

    done

echo "$DATE_LOG - Fin"
