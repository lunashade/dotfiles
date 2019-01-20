#!/bin/sh

cd `dirname $0`
cd config
for f in *
do
    ln -svfn ${PWD}/${f} ${HOME}/.config/${f}
done
