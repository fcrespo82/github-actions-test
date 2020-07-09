#!/bin/sh -l

npm i

vsce "$@"

name=`ls *.vsix`
path=`pwd`/$name

echo "::set-output name=package_name::$name"

echo "::set-output name=package_path::$path"