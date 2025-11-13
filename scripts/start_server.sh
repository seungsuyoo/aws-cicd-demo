#!/bin/bash
set -e

export NVM_DIR="/home/ec2-user/.nvm"
if [ -s "$NVM_DIR/nvm.sh" ]; then
	. "$NVM_DIR/nvm.sh"
fi

nvm use 24

cd /var/www/myapp

# PM2 설치 (전역으로, 없을 경우)
if ! command -v pm2 &> /dev/null; then
    npm install -g pm2
fi

# PM2로 애플리케이션 시작
pm2 start server.js --name "myapp"

echo "Application started"