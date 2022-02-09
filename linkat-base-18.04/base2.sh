#!/bin/bash

LOG=/var/log/install_linkat.log
echo "Executant update-gconf-defaults" >> $LOG
/usr/bin/update-gconf-defaults >> $LOG
