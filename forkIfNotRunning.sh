#!bash

# This script starts a programm with all it's command line arguments 
# only if it is not already running as a process

prog_name=`basename $1 .exe` ; 
process_id=`ps | grep ${prog_name} | awk '{print $1}'` ;
if [ -z "${process_id}" ]; then
   "$@" & 
fi
