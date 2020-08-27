#!/bin/sh
echo
echo "                          LOGIN       "
echo "Enter Username:" 
read username
echo "Enter Password:" 
read password

RESULT=$(mongo localhost:27017/feedbyme --eval "db.userAuth.findOne({username:'${username}', password:'${password}'})")
RESULT_1=$?
NULL="null"
log_count=$1

if [[ $RESULT_1 -ne "0" || "$RESULT" == *"$NULL"* ]]; then
    echo
    echo "Incorrect Username or Password. Register your account if you haven't. "
else
    echo "log_count = $log_count" 
    echo
    echo "Logged in as $username"
    echo "Current User - $username"
fi 