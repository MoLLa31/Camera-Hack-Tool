#!/bin/bash

#################### GÜNLER ####################

bazarertəsi=$(date |grep -o Mon)
çərşənbəaxşamı=$(date |grep -o Tue)
çərşənbə=$(date |grep -o Wed)
cüməaxşamı=$(date |grep -o Thu)
cümə=$(date |grep -o Fri)
şənbə=$(date |grep -o Sat)
bazar=$(date |grep -o Sun)

#################### GÜNLERE GÖRE RENKLER ####################

if [[ $bazarertəsi == Mon ]];then
	color='\e[32m'
elif [[ $çərşənbəaxşamı == Tue ]];then
	color='\e[33m'
elif [[ $çərşənbə == Wed ]];then
	color='\e[34m'
elif [[ $cüməaxşamı == Thu ]];then
	color='\e[31m'
elif [[ $cümə == Fri ]];then
	color='\e[36m'
elif [[ $şənbə == Sat ]];then
	color='\e[32m'
elif [[ $bazar == Sun ]];then
	color='\e[33m'
fi

#################### BANNER ####################

printf "
\e[97m



　 　          ▒█▀▀█ ░█▀▀█ ▒█▀▄▀█ ▒█▀▀▀ ▒█▀▀█ ░█▀▀█ 
         　 　 ▒█░░░ ▒█▄▄█ ▒█▒█▒█ ▒█▀▀▀ ▒█▄▄▀ ▒█▄▄█ 
         　 　 ▒█▄▄█ ▒█░▒█ ▒█░░▒█ ▒█▄▄▄ ▒█░▒█ ▒█░▒█ 
$color

　 　             　 ▒█░▒█ ░█▀▀█ ▒█▀▀█ ▒█░▄▀ 
            　 　 　 ▒█▀▀█ ▒█▄▄█ ▒█░░░ ▒█▀▄░ 
            　 　 　 ▒█░▒█ ▒█░▒█ ▒█▄▄█ ▒█░▒█ 


                         \e[33mSON GÜNCELLEME :\e[0m $(cat updates_infos |sed -n 1p)
         \e[1;97m+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
              $color C O D E D   B Y   M o L L a
         \e[97m+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	 \e[97m+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	          $color instagram: m0ll4.tech
  	 \e[0;97m+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	         +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
		     +-+-+-+-+-+-+-+-+-+-+-+
		         +-+-+-+-+-+-+-+
			     +-+-+-+
			       +-+
			        +

"
