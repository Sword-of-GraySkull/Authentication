#!/bin/sh

log_count=$1
echo
echo "                              LOGOUT      "
if [ $log_count -lt 0 ]; then
    echo
    echo "Log in to an Account first."
else
    echo
    echo "Logging you out...."
    u="$(id -u -n)"
    echo "Current User - $u"
fi