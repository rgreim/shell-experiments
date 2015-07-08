#! /bin/bash

#Erstellt Verzeichnis, falls Name noch nicht existiert.
if (($# == 1))
then
echo "Number of arguments matched. Creating file ..."
	if [ -e $1 ]; then
		echo "Cannot create file. File already exists."
	else 
		touch $1
		echo "File successfully created. Thanks for using file.sh."
	fi
else
echo "Illegal number of arguments."
fi

