#!/bin/bash
set -euxo pipefail

dnf -y update
dnf -y install httpd

systemctl enable --now httpd

cat >/var/www/html/index.html <<'HTML'
<!doctype html>
<html lang="en">
  <head><meta charset="utf-8"><title>It works!</title></head>
  <body style="font-family: system-ui, sans-serif; padding: 2rem;">
    <h1>It works!</h1>
  </body>
</html>
HTML
