#!/bin/bash


# curl https://api.github.com/users/roshaen

# sudo apt install jq

figlet "GITHUB DATA COLLECTOR"
	echo "USERNAME : "
	read usrname
	python3 main.py $usrname
	username=$(jq '.login' data.json)
	userID=$(jq '.id' data.json)
	name=$(jq '.name' data.json)
	company=$(jq '.company' data.json)
	location=$(jq '.location' data.json)
	repoCount=$(jq '.public_repos' data.json)
	followers=$(jq '.followers' data.json)
	followings=$(jq '.following' data.json)
	echo ${username},${userID},${name},${location},${repoCount},${followers},${followings} >> data.csv
	echo ${username},${userID},${name},${location},${repoCount},${followers},${followings}

#echo $username
