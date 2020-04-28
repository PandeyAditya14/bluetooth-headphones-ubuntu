#!/bin/bash
 
 MACADDR="11:11:22:33:CF:D2" #Replace this with your mac_addr / hw_id
 TI=""

#-------------Extracting time arguments--------------------------#

 if [ "$#" -eq  "0" ]
   then
     TI="10s"
 else
     TI="$1"
 fi

#------------Removing The device----------------------------------#

bluetoothctl remove $MACADDR

#------------Setting a timeout for the bluetooth Scan-------------#

CHOICE=1

while [ $CHOICE -gt 0 ] #To retry in case it didn't work on first try
do

    timeout $TI bluetoothctl scan on

#------------Connecting to the device ----------------------------#

    OP=`bluetoothctl connect $MACADDR`
    CHK_STR=`echo $OP | cut -d ' ' -f 3`  
    if [[ "$CHK_STR" == "not" ]]     #Comparig the fourth word of O/P and is it's not it means that device failed to connect and we retry
        then
            TI=10s
    else    
        CHOICE=0
    fi
done
