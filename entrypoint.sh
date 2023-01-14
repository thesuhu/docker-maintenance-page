#! /bin/sh
sed -i "s/{{title}}/$(echo ${TITLE})/g" index.html
sed -i "s/{{heading_title}}/$(echo ${HEADING_TITLE})/g" index.html
sed -i "s/{{message}}/$(echo ${MESSAGE})/g" index.html
sed -i "s/{{mail}}/$(echo ${MAIL_ADDRESS})/g" index.html
sed -i "s/{{team_name}}/$(echo ${TEAM_NAME})/g" index.html

while true;  do {  echo -e "HTTP/1.1 ${RESPONSE_CODE}\r\n"; echo "$(cat index.html)"; } | nc -lvp  "$PORT";  done