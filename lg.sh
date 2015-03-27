#!/bin/bash
#BGP route show script
# Autor Firdavs Murodov <firdavs@root.tj>
# Date Mar 27, 2015 20:45

if [ "$1" != "" ]; then
   ip=$1
 else
   echo "type ip or net"
   read ip
fi

curl "http://lg.ttk.ru/?query=bgp&protocol=IPv4&addr=$ip&router=lnn02rb" 2> /dev/null |grep -vE "<*>|unverified" |grep -E "AS|([0-9]{1,3}\.){3}[0-9]{1,

exit 0
