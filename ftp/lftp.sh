#ftp连接脚本
#!/usr/bin/env bash

lftp -u ${USER},${PASSWORD} sftp://${IP}:${PORT} <<EOF
cd ${SEVERDIR}/
ls
lcd ${CLIENTDIR}
get ${FILE}
bye
EOF
