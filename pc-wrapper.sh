#!/bin/bash

set -eo pipefail

repo=$1
dir=${2:-.}
rpmvers=$3
debvers=$4

for v in $rpmvers
do
    echo Pushing to $repo/$v
    package_cloud push --yes ${repo}/${v} ${dir}/*.rpm
done | tee rpmout

for v in $debvers
do
    echo Pushing to $repo/$v
    package_cloud push --yes ${repo}/${v} ${dir}/*.deb
done | tee debout

rpmout=$(< rpmout)
debout=$(< debout)

echo "::set-output name=rpmout::$rpmout"
echo "::set-output name=debout::$debout"
