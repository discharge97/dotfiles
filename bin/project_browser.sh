#!/bin/bash

declare -a arr=(
"/home/alex/code"
"/home/alex/isum"
)

path=''
for i in "${arr[@]}"
do
   path="$path $i/*/";
done

folder=`/usr/bin/ls -1 -d $path | rofi -dmenu`;

OPTION=`echo -e "webstorm\nnvim\nvscode" | rofi -dmenu`;
case $OPTION in
'webstorm')
	exec `fd webstorm.sh /home/alex/.local` $folder
;;

'nvim')
	nvim $folder
;;

'vscode')
	code $folder
;;

*)
echo “Invalid selection 😢”
exit 1
esac
