#!/bin/bash

/usr/local/nginx/sbin/nginx
cd /project/MxOnline/ && uwsgi --ini /project/MxOnline/uwsgi.ini
cd /project/MxOnline/ && python3 manage.py collectstatic --noinput
ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key -N ""
ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ed25519_key -N ""
/usr/sbin/sshd -D
