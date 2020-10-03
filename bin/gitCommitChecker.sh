#!/bin/sh

if $(git rev-parse --is-inside-work-tree);
then
	while :
	do
		git fetch
		gitBranch=$(git branch --show-current)
		msg=$(git log HEAD..origin/$gitBranch --oneline)

		if [[ ! $gitBranch =~ "fatal" ]] && [ ! -z "$msg" ]
		then
			notify-send -i ~/Pictures/git.png "Git status tracker" "Your branch ($gitBranch) is behind following commits!\n$msg"
		fi
	sleep 5m
	done
fi
