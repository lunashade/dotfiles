#!/bin/sh

cd `dirname $0`
cd dots
for f in .??*
do
    ln -sfvn ${PWD}/${f} ${HOME}/${f}
done
