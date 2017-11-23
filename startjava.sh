#!/bin/sh
# only for debug
printenv

sed "s/@1/"$DB2_DBNAME"/;s/@2/$DB2_USER/;s/@3/$DB2_PASSWORD/;s/@4/$DB2_PORT/;s/@5/$DB2_HOST/" serverX.xml > server.xml

securityUtility createSSLCertificate --server=defaultServer --password=123456789
exec /opt/ibm/wlp/bin/server run defaultServer
