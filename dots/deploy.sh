#!/bin/sh

cd `dirname $0`
for f in .??*
do
    ln -sfvn ${PWD}/${f} ${HOME}/${f}
done
