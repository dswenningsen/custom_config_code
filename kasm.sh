kasmvncserver :10 \
-depth 24 \
-geometry 1280x1050 \
-websocketPort 8443 \
-FrameRate=24 \
-interface 0.0.0.0 \
-httpd /usr/share/kasmvnc/www \
-log *:stderr:100 \
-sslOnly \
-cert /etc/ssl/certs/ssl-cert-snakeoil.pem \
-key /etc/ssl/private/ssl-cert-snakeoil.key \

