#!/bin/sh

set -e

CLIARG=
for envvar in $( printenv | sed -n -e 's/CLIARG_//p' ) ; do
  varname=${envvar%=*}
  value=${envvar#*=}
  CLIARG="$CLIARG --$( echo ${varname} | tr _A-Z -a-z ) ${value}"
  done

docker-entrypoint.sh $CLIARG $@
