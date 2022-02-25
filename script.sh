
git fetch -p

branches_list=$(git branch -a --list "*release_v*")
branches_list=$(echo $branches_list | xargs -n1 | sort | xargs)

echo $branches_list

# last_tag=$(git describe --tags  `git rev-list --tags --max-count=1`)

# echo $last_tag

# for branch in $branches
# do
#     echo $branch
# done


# my_list='a z t b e c'
# my_list=$(echo $my_list | xargs -n1 | sort | xargs)
# echo $my_list