#!/usr/bin/env bash

install_geany() {
    echo -e "\e[0;32m---Backup your Geany Conf---+\e[0m\n"
    if [[ `whereis geany` ]]; then
        if [[ `ls ~/.config/geany` ]]; then
            mv ~/.config/geany  ~/.config/GEANY.BAK
            mkdir -p ~/.config/geany
        fi
        echo -e "\e[0;32m Copy the files for your .config\e[0m"
        cp -r `pwd`/files/*  "$HOME"/.config/geany
        echo -e "\e[0;32m+---------Finished!---------+\e[0m"
    else
        echo -e "\e[0;32m+---Install Geany---+\e[0m"
        sudo pacman -S geany
        echo -e "\e[0;32m Copy the files for your .config\e[0m"
        cp -r `pwd`/files/*  "$HOME"/.config/geany
        echo -e "\e[0;32m+-----Finished!-----+\e[0m"
    fi
}
install_geany
