#!/bin/sh
#edit sudo ./osmocon -m c123xor -p /dev/ttyUSB0 -c firmwares/compal_e88/trx.highram.bin 
#MOBILE 1
cd /usr/src/CalypsoBTS
echo "P R E S S   P O W E R   B U T T O N"
sudo ./osmocon -m c123xor -p /dev/ttyUSB0 -c firmwares/compal_e88/trx.highram.bin -r 99
#read e

