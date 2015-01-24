#!/bin/zsh

setopt extended_glob

REL_PATH=$(dirname $0)

ln -s $REL_PATH/.*~$REL_PATH/.git(/) .
ln $REL_PATH/.*~$REL_PATH/.gitmodules(.) .
