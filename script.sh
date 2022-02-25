#!/bin/bash

git fetch -p

branches_list_str=$(git branch -r --list "*release_v*")
branches_list_str=$(echo $branches_list_str | xargs -n1 | sort | xargs)

branches_list=(${branches_list_str//\ / })
echo "release branches >> " $branches_list_str

current_release=${branches_list[-1]}
current_release_name=(${current_release//\// })
echo "current release name >> " ${current_release_name[-1]}

echo 

previous_release=${branches_list[-2]}
previous_release_name=(${previous_release//\// })
echo "previous release >> " ${previous_release_name[-1]}


# for branch in $branches_list
# do
#     echo $branch
# done

# my_list='a z t b e c'
# my_list=$(echo $my_list | xargs -n1 | sort | xargs)
# echo $my_list