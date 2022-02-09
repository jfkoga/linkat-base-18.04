#!/bin/bash
LOG=/var/log/install_linkat.log

echo "Executant base1.sh" >> $LOG
/usr/share/linkat/linkat-base/base1.sh 
echo "Executant base2.sh" >> $LOG
/usr/share/linkat/linkat-base/base2.sh
