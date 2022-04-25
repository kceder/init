#!/bin/bash
echo "Give login of an active account to delete"
read login

if w | grep "^$login"
then
    sudo pkill -u $login
    sudo deluser -rf $login
    echo "user deleted"
else
    echo "login $login not found"
fi