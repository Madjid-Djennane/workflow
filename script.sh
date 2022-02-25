#!/bin/bash

git fetch -p

branches_list_str=$(git branch -r --list --sort=committerdate "*release_v*")


branches_list_size=${#branches_list_str}

if [ $branches_list_size -gt 0 ]
then
    branches_list=(${branches_list_str//\ / })
    
    # current release
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

