#!/bin/bash
grep path .gitmodules | awk '{ print $3 }' > /tmp/git-submodule-dirs

# read
while read LINE
do
	echo $LINE
	(cd ./$LINE && git checkout master && git pull)
done < /tmp/git-submodule-dirs
