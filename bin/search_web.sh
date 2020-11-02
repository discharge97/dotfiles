#!/usr/bin/env bash

prompt="Google"

url="https://www.google.com/search?q="
case "$1" in
	"yt")	prompt="YouTube" url="https://www.youtube.com/results?search_query=";;
	"*")	prompt="Google";;
esac

query="$(echo '' | dmenu -fn 'Hack-10' -p "$prompt: ")"

if [ ! -z "$query" ]
then
	firefox "$url$query"
fi
