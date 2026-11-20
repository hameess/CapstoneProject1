#!/bin/bash
set -e

apt-get update -y
apt-get install -y nginx

cat << 'HTML' > /var/www/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Terraform EC2 Web Server</title>
</head>
<body>
  <h1>Deployed via Terraform on AWS</h1>
  <p>Nginx web server is running on Ubuntu.</p>
</body>
</html>
HTML

systemctl enable nginx
systemctl restart nginx
