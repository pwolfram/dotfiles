#!/bin/bash

# cp's not needed because we are using symbolic links now

#cp bash/.bashrc ~/.
#cp bash/.bash_profile ~/.
#cp bash/.bash_aliases ~/.

CUSTOM_FILES=`ls bash-it-custom/`
for FILE in ${CUSTOM_FILES}
do
	ln -sf ${PWD}/bash-it-custom/${FILE} ~/.bash_it/custom/.
done

#cp ${PWD}/git/.gitconfig ~/.
#git config --global core.excludesfile "${PWD}/git/core_excludes"

mkdir -p ~/scripts
cp -R scripts/* ~/scripts/.

cp -r git/hooks ~/.git_template/hooks

# update bundles
vim -u ~/.vimrc.bundles +BundleInstall +q
