#!/bin/bash

# this script creates directory ./flat (in pwd) containing develop branch of
# easybuilders/easyconfigs git repo.

# stop on error
set -e

# functions

print_to_stdout () {
    echo -e "\e[96m${1}\e[39m"
}

# main()

print_to_stdout "cleaning possibly present directories"

rm -rf easybuild-easyconfigs
rm -rf flat

print_to_stdout "cloning upstream"
git clone https://github.com/easybuilders/easybuild-easyconfigs.git

print_to_stdout "changing to repo dir"
cd easybuild-easyconfigs

print_to_stdout "check out develop branch"
git checkout develop
cd ..

mkdir flat

print_to_stdout "flattening the structure"
find "${PWD}/easybuild-easyconfigs/" -type f -exec cp '{}' flat/ \;

print_to_stdout "removing the original directory.."
rm -rf easybuild-easyconfigs

print_to_stdout "done."
