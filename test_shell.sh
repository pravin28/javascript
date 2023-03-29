#! /bin/bash



git init
IFS=','
array=(
"javascript,git@github.com:pravin28/javascript.git"
"java,git@github.com:pravin28/JAVA.git"
)
# declare -A map
# map["dealservice"]="https://gitlab.com/tekion/development/drp/salescloud/drp-dealservice.git"
# map["deskingservice"]="https://gitlab.com/tekion/development/drp/salescloud/drp-deskingservice.git"

# for i in "${!map[@]}"

git init
git checkout "main"
git add .
git commit -m "added file"

for i in "${array[@]}"
do
	read -a strarr <<< "$i"
	j=${strarr[0]}
	k=${strarr[1]}
    
    # echo "Started $i - ${map[$i]}"
    echo "$j - $k"
    git remote add $j $k
   
	
	# git fetch develop && git checkout -b "test_auto" "develop"
	git push -u $i main

	echo "Done "
done

echo -e '\nCompleted All\n'
