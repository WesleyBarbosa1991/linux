#!/bin/bash

## O COMANDO ACIMA É PARA QUE O SISTEMA OPERACIONAL EXECUTE O SCRIPT INTEIRO##
# ----------------------------- Script ----------------------------- #

##COMENTÁTIOS DEVEM FICAR ENTRE HASTAGS##


echo "Este Script foi desenvolvido por Wesley Barbosa -  Baseado nos conteúdos do canal DIOLINUX"
echo "Script Feito para Linux Mint, Debian, Zorin, ou qualquer outra distro Baseada no Debian __Exceto Ubuntu__"
echo "AMD Ryzen 5 5500,64GB RAM, NVME 500GB,RTX 2060" 
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "SEU COMPUTADOR IRÁ REINICIAR AO FINAL DA INSTALAÇÃO É NORMAL"
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "Os Progressos serão descritos antes de serem iniciados"
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "Serão instalados os itens abaixo"
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "Navegadores: Google Chrome e Opera"
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "Programas: WPS Office, Skype, Visual Studio Code, Whatsdesk, Telegram Desktop, Drivers Nvidia, TeamViewer, Obs Studio, Spotify, Ultra VLC, Discord, Virtual BOX"
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "Tempo estimado 20 Minutos, podendo variar para mais ou para menos, dependendo da sua conexão e capacidade de processamento do seu PC"
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."

echo "Bora então..."

echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."
echo "..."

## Removendo travas eventuais do apt ##

echo "Removendo travas eventuais do apt.."
sudo rm /var/lib/dpkg/lock-frontend; sudo rm /var/cache/apt/archives/lock;

echo "Atualizando Sistema Operacional"
sudo apt-get update && sudo apt-get upgrade -y

## Download de programas Externos##
## Substituir o nome Usuário pelo usuário logaado no pc##
echo "Criando pasta para baixar os arquivos"
mkdir /home/$USER/Downloads/Programas && cd /home/$USER/Downloads/Programas


## Download Navegador Google Chrome, Skype, Virtual BOX e Teamviewer##
echo "iniciando download e instalando Google Chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo dpkg -i google-chrome-stable_current_amd64.deb;

echo "iniciando download e instalando Teamviewer"
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb && sudo dpkg -i teamviewer_amd64.deb;

echo "Iniciando Download e Instalando Skype"
wget https://repo.skype.com/latest/skypeforlinux-64.deb && sudo dpkg -i skypeforlinux-64.deb;

cd 

mkdir /home/$USER/Downloads/Programas/outros && cd /home/$USER/Downloads/Programas/outros

echo "Baixando e  VirtualBOX"
wget https://download.virtualbox.org/virtualbox/7.0.0/virtualbox-7.0_7.0.0-153978~Ubuntu~jammy_amd64.deb

sudo dpkg -i *.deb 

cd

echo "Removendo pastas e arquivos baixados"
sudo rm -r /home/$USER/Downloads/Programas

echo "instalando plugins adicionais do Teamviewer e demais Programas !"
sudo apt-get upgrade -y; sudo apt --fix-broken install

## Adicionando repositórios Drivers Nvidia e OBS Studio##
echo "Adicionando repositórios Drivers Nvidia e OBS Studio"
sudo apt-add-repository ppa:graphics-drivers/ppa 
sudo add-apt-repository ppa:obsproject/obs-studio

## ----------------------------- EXECUÇÃO ----------------------------- ##

## Atualizando o repositório depois da adição de novos repositórios ##
echo "Atualizando Sistema Operacional & Repositórios"
sudo apt-get update -y

echo "instalando OBS Studio"
sudo apt-get install obs-studio;

##Correção Teamviewer##
sudo apt-get upgrade -y; sudo apt --fix-broken install


##Pré Instalação Snap##
sudo rm -r /etc/apt/preferences.d/nosnap.pref

echo "Instalando Suporte a Snaps"
sudo apt-get install snapd

## Atualizar snaps ##
echo "Atualizando Snap"
sudo snap refresh 

echo "instalando Visual Studio Code, Opera, WPS Office, Whatsdesk, Telegram Desktop, TeamViewer, Obs Studio, Spotify, Ultra VLC, Discord"
sudo snap install code --classic; sudo snap install opera; sudo snap install wps-office-all-lang-no-internet; sudo snap install whatsdesk; sudo snap install telegram-desktop; sudo snap install spotify; sudo snap install vlc; sudo snap install opera; sudo snap install discord;

echo "Atualizando Apps Snaps Instalados"
sudo snap refresh

## Finalização, atualização e limpeza##
echo "Finalização, atualização total e limpeza"
sudo apt update && sudo apt dist-upgrade -y && sudo apt-get upgrade; sudo snap refresh; flatpak update; sudo apt autoclean;
echo "Programas Instalados com Sucesso!"
echo "Sctipt feito por Wesley Barbosa"
echo "DENTRO DE 1 MINUTO O COMPUTADOR IRÁ REINICIAR E ESTARÁ PRONTO PARA USO !"

sudo reboot;
