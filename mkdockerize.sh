#!/bin/bash
argcount=$@
#echo $argcount 
FILE="myproject.tar.gz"
if [[ $1 == "produce" ]]; then
	echo "Building project ....."
	mkdocs build -f myproj/mkdocs.yml -d /app/content
	cd content
	tar -zcvf /app/$FILE *
	rm -rf /app/content
elif [[ $1 == "serve" ]]; then	
	echo "serving content"
	if [[ -f "$FILE" ]]; then
		echo "$FILE exists."
		mkdir /app/content
		tar -zxvf $FILE -C /app/content
		mkdocs serve -f myproj/mkdocs.yml -a 0.0.0.0:8000
		rm -rf /app/content
	else
		echo "Required project content not available. Kindly create content first using \"produce\" argument."
		exit 1
	fi
	
else
	echo "Invalid argument found ! Kindly try with produce / serve ."
	exit 1

fi
