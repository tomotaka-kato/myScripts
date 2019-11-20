#!/bin/bash

for f in *.fish
do
    ln -fs "$PWD"/$f ~/.config/fish/functions/
done
