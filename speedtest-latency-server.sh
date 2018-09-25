#!/bin/bash
Server=$1
OPTION=$2
case $OPTION in
        latency)
                QUERY="$(python speedtest.py --server $Server | head -n 5  | tail -n 1| awk '{print $7}')"
                ;;
        read)
                QUERY="$(python speedtest.py --server $Server | head -n 5  | tail -n 1| awk '{print $7}')"
                ;;
        write)
                QUERY="$(python speedtest.py --server $Server | head -n 5  | tail -n 1| awk '{print $7}')"
                ;;
        *)
            
             exit 1
esac
echo $QUERY
exit 0

