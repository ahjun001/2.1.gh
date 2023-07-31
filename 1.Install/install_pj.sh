#!/usr/bin/env bash

set -euo pipefail

# shellcheck source=/dev/null
. ~/Documents/Github/2.1.Linux/1.Install/01_set_env_variables.sh

<<<<<<< HEAD:1.Install/00_install_pj.sh
# Exit if APP is already installed
APP=$"${APP:?}"
=======
$DBG $'\n'"${BASH_SOURCE[0]#/home/perubu/Documents/Github/}" 

# Exit if APP is already installed
APP="{APP:?}"
>>>>>>> 3e19f6fa19c8cd167db7f68d2d81deb41a619b43:1.Install/install_pj.sh
if command -v "$APP" >/dev/null; then
    $DBG $'\t'"$APP" is already installed
    [[ "$0" == "${BASH_SOURCE[0]}" ]] && exit 0 || return 0
fi

case $ID in
fedora)
    $DBG -e "\n$APP not implemented in $ID\n"
    ;;
linuxmint | ubuntu)
    $DBG -e "\n$APP not implemented in $ID\n"
    ;;
*)
    echo "Distribution $ID not recognized, exiting ..."
    exit 1
    ;;
esac

LINKS="${0#/*}"/links_pj.sh
[[ -f $LINKS ]] && $LINKS

$RUN "$APP"
