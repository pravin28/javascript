#!/usr/bin/env bash



IFS=','
array=(
"124179,10.1758"
"140288,18.7763"
"140291,15.4194"
"140286,19.0488"
)

for i in "${array[@]}"
do
	read -a strarr <<< "$i"
	j=${strarr[0]}
	k=${strarr[1]}

    echo "http://10.80.10.5:8040/api/data/vro/nav/update/manual?nav=$k&scheme_code=$j"
	curl -X GET "http://10.80.10.5:8040/api/data/vro/nav/update/manual?nav=$k&scheme_code=$j" -H "accept: application/json"
		
done

echo -e '\nCompleted All\n'