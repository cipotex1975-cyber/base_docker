# -*- coding: utf-8 -*-
"""
=============================================================================
 Aplicación principal - Python 2.7
=============================================================================
 Punto de entrada de la aplicación.
 Coloca tu código aquí o importa tus módulos desde este archivo.
"""

from __future__ import print_function
import os
import sys


def main():
    """Punto de entrada principal de la aplicación."""
    print("=" * 60)
    print("  Python 2.7 - Contenedor Docker")
    print("  Versión de Python: {}".format(sys.version))
    print("  Entorno: {}".format(os.environ.get("APP_ENV", "unknown")))
    print("  Directorio de trabajo: {}".format(os.getcwd()))
    print("=" * 60)
    print("")
    print("  ¡Contenedor funcionando correctamente!")
    print("  Coloca tu aplicación en el directorio /app/")
    print("")


if __name__ == "__main__":
    main()
