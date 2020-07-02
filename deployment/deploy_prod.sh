#!/bin/sh

ssh -tt root@192.168.1.129 <<EOF
  cd djtrump
  git pull
  source /opt/envs/djtrump/bin/activate
  pip install -r requirements.txt
  ./manage.py migrate
  ./manage.py runserver
  exit
EOF
