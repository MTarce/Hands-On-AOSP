#!/bin/bash

# Navega até o diretório do AOSP
cd ~/aosp || { echo "Erro: Não foi possível entrar no diretório '~/aosp'."; exit 1; }

# Carrega as ferramentas para configurar o ambiente de desenvolvimento
source build/envsetup.sh || { echo "Erro: Não foi possível carregar o ambiente."; exit 1; }

# Define o dispositivo para trabalhar (emulador)
lunch sdk_phone_x86_64-userdebug || { echo "Erro: Não foi possível definir o dispositivo."; exit 1; }

echo "Ambiente de desenvolvimento configurado com sucesso para o emulador."
