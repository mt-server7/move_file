#!/bin/bash

function usage() {
	cat <<USAGE

	Usage: $0 [-i image] [-m music] [-t text] [-a all]  
	 
	Options:
		-i, --image:		Move image
		-m, --music:		Move sound and music
		-t, --text:     	Move text file
		-a, --all:		Move all list in /куча

USAGE
	exit 1
}

if [ $# -eq 0 ]; then
	usage
	exit 1
fi

TAG=

while [[ "$1" != "" ]]; do

	case $1 in
		-h | --help)
			usage
			;;
		
		-i | --image)
		shift
		TAG=$1
		{ 
		mv /home/name/Загрузки/*.png /home/name/Загрузки/*.PNG /home/name/Загрузки/*.jpeg /home/name/Загрузки/*.jpg /home/sysadmin/Изображения/other/
		}&>/dev/null
		;;
		
		-m | --music)
		shift
		TAG=$1
		{ 
		mv /home/name/Загрузки/*.wav /home/name/Загрузки/*.mp3 /home/name/Музыка/
		}&>/dev/null
		;;
	
		-t | --text)
		shift
		TAG=$1
		{
		mv /home/name/Загрузки/*.csv /home/name/Загрузки/*.xls /home/name/Загрузки/*.xlsx /home/name/Загрузки/*.ods /home/name/Загрузки/*.txt /home/sysadmin/Документы/
		}&>/dev/null
		;;
	
		-a | --all)
		shift
		TAG=$1
		{
		mv  /home/name/Загрузки/*.csv /home/name/Загрузки/*.xls /home/name/Загрузки/*.xlsx /home/name/Загрузки/*.ods /home/name/Загрузки/*.wav /home/name/Загрузки/*.mp3 /home/name/Загрузки/*.png /home/name/Загрузки/*.PNG /home/name/Загрузки/*.jpeg /home/name/Загрузки/*.jpg /home/sysadmin/Документы/куча
		}&>/dev/null
		;;
		
		*)
		usage
		exit 1
		;;
	esac
done

echo "Файлы успешно перенесены!"
