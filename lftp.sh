
lftp -u ${USER},${PASSWORD} sftp://${IP}:${PORT} <<EOF
cd ${SEVERDIR}/
ls
lcd ${CLIENTDIR}
get ${FILE}
bye
EO
