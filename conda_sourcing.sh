#!/usr/bin/env bash
# @xaramillo
#
# Este es el script front
#
#
# Paso 1: Figurando dónde se encuentra instalado Miniconda
# CONDA_EXE es una variable predefinida en la instalación de Conda
# La necesidad de este script es porque el ejecutable de conda no está habilitado para ejecución no-interactiva
# En la primera ejecución de este script, seguramente no exista la siguiente variable de entorno

# Esta función busca una variable de entorno persistente, de no encontrarla la crea
get_conda_installation_path() {
  if [ -v $CONDA_INSTALL_PATH ]; then
    echo ""
  else
    if [ -z $CONDA_INSTALL_PATH ]; then
      echo "Conda Path: $CONDA_INSTALL_PATH"
    else
      CONDA_INSTALL_PATH=$(echo $CONDA_EXE | sed 's/bin\/conda//')
      echo -e "\n# Línea Agregada por $(whoami), $0 $(date)" >> ~/.bashrc
      echo -e "export CONDA_INSTALL_PATH=$CONDA_INSTALL_PATH\n" >>  ~/.bashrc
      echo "Agregando Variable al .bashrc: $CONDA_INSTALL_PATH"
    fi
  fi
}

get_conda_installation_path
CONDA_SH=$(echo "$CONDA_INSTALL_PATH/etc/profile.d/conda.sh" | sed 's/\t//')
if [ -f $CONDA_SH ]; then
  echo "Sourceando ... $CONDA_SH"
  source $CONDA_SH
else
  echo "No se encontró el archivo $CONDA_SH"
