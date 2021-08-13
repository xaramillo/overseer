#!/usr/bin/env python3
# Plantilla de Inicio

import click

# Mensaje de Bienvenida
click.echo(message='\nGeneric Click Template V0.1a')

# Parseo de Argumentos
# Por favor consulta:
# - https://click.palletsprojects.com/en/8.0.x/options/
# Opciones
@click.command()
@click.option('--arg1')
@click.option('--arg2')

# Funcion main_
# Esta función puede tener cualquier nombre
def main_(arg1,arg2):
    pass

# Ejecución
if __name__ == "__main__":
    main_()
