#!/bin/bash
set -e

export NVM_DIR="/home/ec2-user/.nvm"
if [ -s "$NVM_DIR/nvm.sh" ]; then
	. "$NVM_DIR/nvm.sh"
fi

nvm use 24

cd /var/www/myapp

# Node.js 의존성 설치
npm install --production

echo "Dependencies installed"
