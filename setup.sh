#!/bin/zsh

SOURCE=$PWD
TARGET=$HOME

# Install oh-my-zsh
echo "\033[0;33mSetting up oh-my-zsh\033[0m"
ln -sf ${SOURCE}/oh-my-zsh ${TARGET}/.oh-my-zsh
ln -sf ${SOURCE}/zshrc ${TARGET}/.zshrc
mkdir -p ${TARGET}/.oh-my-zsh/cache
FASD_INIT_CACHE=${HOME}/.oh-my-zsh/cache/fasd-init-cache 
[[ -e ${FASD_INIT_CACHE} ]] || touch ${FASD_INIT_CACHE} 
[[ ! -e ${SOURCE}/fasd ]] || rm -rf ${SOURCE}/fasd
git clone https://github.com/clvv/fasd.git
sudo cp fasd/fasd /usr/local/bin/fasd
sudo chmod a+x /usr/local/bin/fasd
echo "\033[0;32moh-my-zsh is ready to go!\033[0m"
