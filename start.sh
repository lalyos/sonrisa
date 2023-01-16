#!/bin/bash

cat > /var/www/html/index.html <<EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
</head>
<body bgcolor="${COLOR:=gray}">
    <h2>${TITLE:=Welcome}</h2>
    ${BODY:= please use COLOR/TITLE/BODY env vars}
</body>
</html>
EOF

nginx -g 'daemon off;'
