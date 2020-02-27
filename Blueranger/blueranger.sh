#!/bin/bash

HCI=$1
RM_ADDR=$2
RM_NAME="NONE"
LQ_PREV=255
PING_COUNT=0

if [ "$HCI" = "" ] || [ "$RM_ADDR" = "" ]
then
	echo -e "\nBlueRanger 1.0 by JP Dunning (.ronin) "
	echo -e "<www.hackfromacave.com>"
	echo -e "(c) 2009-2012 Shadow Cave LLC."
	echo -e "\nNAME"
        echo -e "	blueranger"
	echo -e "\nSYNOPSIS"
	echo -e "        blueranger.sh <hciX> <bdaddr>"
	echo -e "\nDESCRIPTION"
        echo -e "	<hciX>         Local interface"
        echo -e "	<bdaddr>       Remote Device Address\n"
else

	echo -e "\nStarting ...\n"
	echo -e "Close with 2 X Crtl+C"
	RM_NAME=`hcitool -i $HCI name $RM_ADDR`

	while /bin/true
	do

		l2ping -i $HCI -c 1 $RM_ADDR | grep NULL; LQ=`hcitool -i $HCI lq $RM_ADDR | grep Link | awk '{print $3}'`
		PING_COUNT=$(($PING_COUNT+1))
		clear
	
		echo -e "\n      (((B(l(u(e(R)a)n)g)e)r)))\n"
		echo -e "By JP Dunning (.ronin) \nwww.hackfromacave.com\n"
		echo -e "Locating: $RM_NAME ($RM_ADDR)"
		echo -e "Ping Count: $PING_COUNT\n"

		if [ "$LQ" = "" ]
		then
			echo "Connection Error"
		else
				echo -e "Proximity Change	Link Quality\n----------------	------------"
			if [ $LQ -eq 255 ]
			then
				echo -e "FOUND			$LQ/255"
			elif [ $LQ -lt $LQ_PREV ]
			then
				echo -e "COLDER			$LQ/255"
			elif [ $LQ -gt $LQ_PREV ]
			then
				echo -e "WARMER			$LQ/255"
			else
				echo -e "NEUTRAL			$LQ/255"
			fi

			echo -e "\nRange\n------------------------------------"

			if [ $LQ -eq 255 ]
			then 
				echo -e "|*"
			elif [ $LQ -gt 249 ] && [ $LQ -lt 255 ]
			then
				echo -e "|    *"
	                elif [ $LQ -gt 239 ] && [ $LQ -lt 250 ]
        	        then
                	        echo -e "|        *"
	                elif [ $LQ -gt 229 ] && [ $LQ -lt 240 ]
        	        then
                	        echo -e "|            *"
	                elif [ $LQ -gt 219 ] && [ $LQ -lt 230 ]
        	        then
                	        echo -e "|                *"
	                elif [ $LQ -gt 209 ] && [ $LQ -lt 220 ]
        	        then
                	        echo -e "|                    *"
	                elif [ $LQ -gt 199 ] && [ $LQ -lt 210 ]
        	        then
                	        echo -e "|                        *"
	                elif [ $LQ -gt 189 ] && [ $LQ -lt 200 ]
        	        then
                	        echo -e "|                            *"
	                elif [ $LQ -gt 179 ] && [ $LQ -lt 190 ]
        	        then
                	        echo -e "|                               *"
			else
				echo -e "|                                  *"
			fi

			echo -e "------------------------------------"

			LQ_PREV=$LQ
		fi
	done
fi
