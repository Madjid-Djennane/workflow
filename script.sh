#!/bin/bash

git fetch -p

branches_list_str=$(git branch -r --list "*release_v*" | tr " " "\n" | sort -t . -k 2 -g | tr "\n" " ")

## echo "81 4 6 12 3 0" | tr " " "\n" | sort -g | tr "\n" " "

branches_list=(${branches_list_str//\ / })

if [ ${#branches_list[@]} -gt 1 ]
then
    current_release=${branches_list[-1]}
    current_release_name=(${current_release//\// })
    echo "current release name >> " ${current_release_name[-1]}
    # second last release

    previous_release=${branches_list[-2]}
    previous_release_name=(${previous_release//\// })
    echo "second last release >> " ${previous_release_name[-1]}
else
   echo "no second last release !"
fi
