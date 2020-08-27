#!/bin/sh

log_count=0


echo "  1. Login - login to your account"
echo "  2. Logout - This will log you out of your account"
echo "  3. Register - Create your own account."
echo "  4. Quit - Exit the session"

while :
do
echo
echo
echo 
read -p "       What do you want to perform? ( 1 / 2 / 3/ 4):" CHOICE


if [ $CHOICE == "1" ]; then
    log_count=1
    sh ./login.sh $log_count
elif [ $CHOICE == "2" ]; then
    log_count=$((log_count-1))
    sh ./logout.sh $log_count
elif [ $CHOICE == "3" ]; then 
    sh ./register.sh
elif [ $CHOICE == "4" ]; then
    exit 0
else
    echo "Make sure your choice is Correct."
fi
done


