#!/bin/sh

cd `dirname $0`
for script in deploy_*.sh
do
    ./${script}
done
