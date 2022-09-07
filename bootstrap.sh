#/bin/bash

set -e

rm -rf $HOME/.config/nvim
cp -r nvim $HOME/.config/

cp ./.fwiedmann.omp.json $HOME/
