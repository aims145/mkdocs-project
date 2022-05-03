#!/bin/bash -x
argcount=$@
echo $argcount
if [[ $1 == "build" ]];then
	echo "Building project ....."
	mkdocs build -d ./content
	cd content
	tar -zcvf /app/myproject.tar.gz *
fi
