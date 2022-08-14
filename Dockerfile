FROM ubuntu:22.04

ENV HOME /home
ENV SHELL /bin/zsh
ENV ZSH_THEME=powerlevel10k/powerlevel10k

RUN apt-get update \
    && apt-get install -y sudo curl git zsh vim \
    && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \
    && sudo git clone https://github.com/romkatv/powerlevel10k.git /home/.oh-my-zsh/custom/themes/powerlevel10k \
    && sudo git clone https://github.com/zsh-users/zsh-autosuggestions /home/.oh-my-zsh/custom/plugins/zsh-autosuggestions

COPY ./.p10k.zsh /home/.p10k.zsh
COPY ./.zshrc /home/.zshrc
