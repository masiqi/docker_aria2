#!/bin/bash

todir="/data/aria2/download"
rawfile="$3"
filedir=`dirname $rawfile`

todir="$todir/$filedir"


if [ ! -d $todir ]; then 
	mkdir -p $todir 
fi

mv $rawfile $todir/.
