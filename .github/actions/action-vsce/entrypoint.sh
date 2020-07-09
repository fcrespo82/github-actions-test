#!/bin/sh -l

vsce "$@"

name=`ls *.vsix`
path=`pwd`/$name

echo "::set-output name=package_name::$name"

echo "::set-output name=package_path::$path"