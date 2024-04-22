#!/bin/bash
set -e

# Ignorar archivos de configuración externos e inicializar las tablas del sistema
/usr/bin/mariadb-install-db --defaults-file=~/.my.cnf

# Iniciar el demonio de MariaDB con las opciones necesarias
/usr/sbin/mariadbd --skip-grant-tables --general-log &

# Esperar un momento para que el demonio de MariaDB se inicie completamente
sleep 5

# Conectar a la base de datos y examinar las tablas de concesión
/usr/bin/mariadb -u root mysql -e "show tables;"

# Lanzar el proceso principal de MariaDB
exec "$@"
