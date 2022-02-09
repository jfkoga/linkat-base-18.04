#!/bin/bash

################################
# Script instal·lació Linkat
#
#
#Data: 09/03/2013
#Review 04/04/2016
#By Tomas Sanchez and Pablo Vigo (Projecte Linkat)
################################

PATH_INST=/usr/share/linkat/linkat-base/
PATH=/usr/share/glib-2.0/schemas/
GCONF_PATH=/usr/share/gconf/defaults/
LOG_FILE=/var/log/install_linkat.log
/bin/touch $LOG_FILE
DIR_TEMP=$(/bin/mktemp -d)
DATA=$(/bin/date)

echo "++++++++++++++++++++++++++++++++" >> $LOG_FILE
echo $DATA >> $LOG_FILE
echo "++++++++++++++++++++++++++++++++\n" >> $LOG_FILE

echo "Script d' instal·lació de Linkat Edu"  >> $LOG_FILE

echo "Actualitzem la configuració de GCONF" >> $LOG_FILE
res=$(/usr/bin/update-gconf-defaults)

echo  "RECOMPILEM GLIBC"  >> $LOG_FILE
# Backup del ubuntu-artwork
if [ -f /usr/share/glib-2.0/schemas/ubuntu-artwork.gschema.override ]; then
       /bin/mv /usr/share/glib-2.0/schemas/ubuntu-artwork.gschema.override /usr/share/linkat/linkat-base/ubuntu-artwork.gschema.override.ORI
fi
res=$(/usr/bin/glib-compile-schemas $PATH)

echo  "Instal·lacio de la Linkat Edu Finalitzada"  >> $LOG_FILE
