#!/bin/bash

set -eo pipefail

for v in el/8 ol/6 ol/7
do
    echo Pushing to $1/$v
    package_cloud push --verbose --yes ${1}/${v} ${2}/*.rpm
done | tee rpmout

for v in ubuntu/bionic ubuntu/focal debian/jessie
do
    echo Pushing to $1/$v
    package_cloud push --yes ${1}/${v} ${2}/*.deb
done | tee debout

rpmout=$(< rpmout)
debout=$(< debout)

echo "::set-output name=rpmout::$rpmout"
echo "::set-output name=debout::$debout"
