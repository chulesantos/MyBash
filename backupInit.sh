#!/bin/bash

echo "\nProcessing ..."

today=$(date +%Y%m%d%H%M%S)

date=$(date)

backup=~/BACKUP

repositorio=~/Developer/Pharmanexo

if [ ! -d "$repositorio" ]; then

  echo "\nO seu Reposiório $repositorio não existe, reconfigure a variável \$repositorio no script $0"

  exit

fi

if [ ! -d "$backup" ]; then

  sudo mkdir ${backup}

  error=$?

  if [ "$error" -eq 0 ]; then

    echo "\nBACKUP folder created ..."

  else

    echo "\nNão foi possível criar a pasta de BACKUP, verifique o script $0"

    exit

  fi

fi

newFolder=${backup}/${today}

sudo mkdir ${newFolder}

if [ ! -d "${newFolder}" ]; then

  echo "\nNão foi possível criar a pasta ${today}, tente novamente ou verifique o script $0"

  exit

else

  echo "\nVersioning folder created ${today} ..."

  sudo cp -R ${repositorio}/* ${backup}/${today}

  error=$?

  if [ "$error" -ne 0 ]; then

    echo "\nNão foi possível executar o BACKUP ERROR: $error"

    exit

  else

    echo "\n${date} Backup Completed => $HOME/BACKUP"

  fi

fi

