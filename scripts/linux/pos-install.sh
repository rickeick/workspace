# VARIÁVEIS
set -e

## Cores
VERMELHO='\e[1;91m'
VERDE='\e[1;92m'
SEM_COR='\e[0m'

## Softwares
PROGRAMAS_PARA_INSTALAR=(
    vlc
    gnome-sushi
    folder-color
    wget
    code
    git
)

# FUNÇÕES

## Internet conectando?
testes_internet() {
    if ! ping -c 1 8.8.8.8 -q &> /dev/null; then
        echo -e "${VERMELHO}[ERROR] - Seu computador não tem conexão com a Internet.${SEM_COR}"
        exit 1
    else
        echo -e "${VERDE}[INFO] - Conexão com a Internet funcionando normalmente.${SEM_COR}"
    fi
}

## Atualizando repositório e fazendo atualização do sistema
apt_update() {
    sudo apt update && sudo apt dist-upgrade -y
}

## Removendo travas eventuais do apt
travas_apt() {
    sudo rm /var/lib/dpkg/lock-frontend
    sudo rm /var/cache/apt/archives/lock
}

## Adicionando/Confirmando arquitetura de 32 bits
add_archi386() {
    sudo dpkg --add-architecture i386
}

## Atualizando o repositório
just_apt_update() {
    sudo apt update -y
}

## Instalando programas deb no apt
install_debs() {
    echo -e "${VERDE}[INFO] - Instalando pacotes apt do repositório${SEM_COR}"
    for nome_do_programa in ${PROGRAMAS_PARA_INSTALAR[@]}; do
        if ! dpkg -l | grep -q $nome_do_programa; then
            sudo apt install "$nome_do_programa" -y
        else
            echo "[INSTALADO] - $nome_do_programa"
        fi
    done
}

## Instalando pacotes Flatpak
install_flatpaks() {
    echo -e "${VERDE}[INFO] - Instalando pacotes flatpak${SEM_COR}"
    flatpak install flathub io.mrarm.mcpelauncher -y
    flatpak install flathub org.hedgewars.Hedgewars -y
    flatpak install flathub com.sauerbraten.Sauerbraten -y
    flatpak install flathub com.frogatto.Frogatto -y
    flatpak install flathub com.bitwarden.desktop -y
    flatpak install flathub com.spotify.Client -y
}

## Atualização e limpeza
system_clean() {
    apt_update -y
    flatpak update -y
    sudo apt autoclean -y
    sudo apt autoremove -y
    nautilus -q
}

## Execução
travas_apt
testes_internet
travas_apt
apt_update
travas_apt
add_archi386
just_apt_update
install_debs
install_flatpaks
apt_update
system_clean

echo -e "${VERDE}[INFO] - Script finalizado, instalação concluída! :)${SEM_COR}"
