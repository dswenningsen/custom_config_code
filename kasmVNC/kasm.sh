PORT="8443"
kasmvncserver :10 \
-depth 24 \
-geometry 1280x1050 \
-websocketPort $PORT\
-FrameRate=24 \
-interface 0.0.0.0 \
-httpd /usr/share/kasmvnc/www \
-log *:stderr:100 \
-sslOnly \
-cert /etc/ssl/certs/ssl-cert-snakeoil.pem \
-key /etc/ssl/private/ssl-cert-snakeoil.key

IP=$(ip route get 8.8.8.8 | awk -F"src " 'NR==1{split($2,a," ");print a[1]}')
echo "Go to https://$IP:$PORT and log in"
