#ftp连接脚本
#!/usr/bin/env bash

#注意如果连接的是ftp，需要将命令中的sftp修改为ftp
lftp -u ${USER},${PASSWORD} sftp://${IP}:${PORT} <<EOF
cd ${SEVERDIR}/
ls
lcd ${CLIENTDIR}
get ${FILE}
bye
EOF
