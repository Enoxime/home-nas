#!/bin/sh

if [ ! -f "/root/.ssh" ]
then
    cp -r "/root/ssh" "/root/.ssh"
fi

"${@}"