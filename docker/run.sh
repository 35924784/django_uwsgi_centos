#!/bin/bash

/usr/local/nginx/sbin/nginx
cd /project/MxOnline/ && uwsgi --ini /project/MxOnline/uwsgi.ini
cd /project/MxOnline/ && python3 manage.py collectstatic --noinput
/usr/sbin/sshd -D
