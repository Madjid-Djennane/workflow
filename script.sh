#!/bin/bash

git fetch -p

branches_list_str=$(git branch -a --list "*release_v*")
branches_list_str=$(echo $branches_list_str | xargs -n1 | sort | xargs)

branches_list=(${branches_list_str//\ / })

echo "release branches >> " $branches_list_str

current_release=${branches_list[-1]}

echo "current release >> " $current_release

previous_release=${branches_list[-2]}

echo "previous release >> " $previous_release


# for branch in $branches_list
# do
#     echo $branch
# done

# my_list='a z t b e c'
# my_list=$(echo $my_list | xargs -n1 | sort | xargs)
# echo $my_list