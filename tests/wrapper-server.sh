#!/usr/bin/env bash
# Tee server stdio into log file.

if test -z "$TMP"; then
    TMP=/tmp
fi

LOG="$TMP/wrapper-server.log"

tee -a $LOG | RUST_LOG=rls rls 2>>$LOG | tee -a $LOG

# tee -a $LOG | php /user/local/bin/php-language-server.php | tee -a $LOG

# tee -a $LOG | /usr/local/bin/language-server-stdio.js | tee -a $LOG

# tee -a $LOG | pyls 2>>$LOG | tee -a $LOG
