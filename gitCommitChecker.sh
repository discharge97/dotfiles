#!/bin/sh

#60 seconds times <5> minutes
sleep_time=60 * 5
while :
do
	git fetch
	gitBranch=$(git branch --show-current)
	msg=$(git log HEAD..origin/$gitBranch --oneline)

	if [[ ! $gitBranch =~ "fatal" ]] && [ ! -z "$msg" ]
	then
		#printf "$msg\n"

		notify-send -i ~/Pictures/git.png "Git status tracker" "Your branch ($gitBranch) is behind following commits!\n$msg"
	fi
	sleep $sleep_time
done
