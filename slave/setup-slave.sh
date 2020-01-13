#!/bin/bash
if [ $# != 6 ] ; then 
   echo "Error:paras is not complete...............[ datadir chainname port rpcport masterIP masterPort], the order of the paras should be as detailed!"
   exit 1
fi   

#-datadir
if [ "x$1" == "x" ] ; 
   then
     echo "Error:DATADIR is empty......Please Check!"
     exit 1
   else
     DATADIR=$1
     if [ ! -d $DATADIR ]; then
	     mkdir $DATADIR
	     if [ $? ！= 0 ]；
	       then
		     echo "Creating datadir[$DATADIR] failed!"
			 exit 1
           else
	 	     echo "Creating datadir[$DATADIR] success!"
	     fi		     
     fi 
fi
echo "-datadir:"$DATADIR

# Fallback for the $CHAINNAME variable
if [ "x$2" == "x" ] ; 
    then
      echo "Error:CHAINNAME is empty......Please Check!"
      exit 1
    else
      CHAINNAME=$2
      echo "-chainname:"$CHAINNAME
fi

# Fallback for the $NETWORK_PORT variable
if [ "x$3" == "x" ] ; 
    then
      echo "Error:NETWORK_PORT is empty......Please Check!"
      exit 1
    else
      PORT=$3
      echo "-port:"$PORT
fi

# Fallback for the $RPC_PORT variable
if [ "x$4" == "x" ] ; 
    then
      echo "Error:RPC_PORT is emtpy......Please Check!"
      exit 1
    else
      RPC_PORT=$4
      echo "-rpcport:"$RPC_PORT
fi

# Fallback for the $master IP variable
if [ "x$5" == "x" ] ; 
    then
      echo "Error:MasterIP is emtpy......Please Check!"
      exit 1
    else
      MasterIP=$5
      echo "-MasterIP:"$MasterIP
fi

# Fallback for the $MasterPort variable
if [ "x$6" == "x" ] ; 
    then
      echo "Error:MasterPort is emtpy......Please Check!"
      exit 1
    else
      MasterPort=$6
      echo "-MasterPort:"$MasterPort
fi

# Create the chain if it is not there yet
if [ ! -d $DATADIR/$CHAINNAME ]; 
  then
	#invoke directly as we already put the exceuteable files under /usr/local/bin
	multichaind $CHAINNAME@$MasterIP:$MasterPort -datadir=$DATADIR -rpcport=$RPC_PORT -port=$PORT -rpcallowip=0.0.0.0/0
  else
    multichaind $CHAINNAME -datadir=$DATADIR -rpcport=$RPC_PORT -port=$PORT -rpcallowip=0.0.0.0/0
fi
