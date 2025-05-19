#!/bin/bash
HOST='ftp.rub-x.org'
USER='your_ftp_username'
PASS='your_ftp_password'
LOCAL_DIR='./'
REMOTE_DIR='/public_html'

lftp -c "
open -u $USER,$PASS $HOST
mirror -R --only-newer $LOCAL_DIR $REMOTE_DIR
bye
"
