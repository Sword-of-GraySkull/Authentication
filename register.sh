#!/bin/sh

echo
echo "                              REGISTER        "

echo "Enter Username:"
read username
echo "Enter Password:"
read password    

RESULT=$(mongo localhost:27017/feedbyme --eval "db.userAuth.findOne({username:'${username}'})")
RESULT_1=$?
NULL="null"

if [[ $RESULT_1 -ne "0" || "$RESULT" == *"$NULL"* ]]; then
    INSERT=$(mongo localhost:27017/feedbyme --eval "db.userAuth.insertOne({username:'${username}', password:'${password}'})")
    echo
    echo "Account Created Successfully!!"
    echo
    echo "Opening Hello File ..."
    echo
    echo "  Hello.txt - Enter your Text and press Ctrl+C to save    "
    cat > hello.txt
else
    echo
    echo "Username Already Exists!! Try again with Another Name"
fi