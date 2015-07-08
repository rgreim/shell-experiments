#! /bin/bash

#Erstellt Verzeichnis, falls Name noch nicht existiert.
if [ $# == 2 ]; then
	case $2 in
	"v")
		echo "Number of arguments matched. Creating file ..."
		if [ -e $1 ]; then
			echo "Cannot create directory. Directory- or filename already exists."
		else
			mkdir $1
			echo "Directory successfully created. Thanks for using dov.sh."
		fi
	;;
	"d")
		echo "Number of arguments matched. Creating file ..."
		if [ -e $1 ]; then
			echo "Cannot create file. File- or directoryname already exists."
		else 
			touch $1
			echo "File successfully created. Thanks for using file.sh."
		fi
	;;
	*)
		echo "Only the creation of directory (v) or file (d) is supported. Please choose one of those arguments."
	;;
	esac
else
	echo "Invalid number of arguments. Not more or less than two arguments supported."
fi
