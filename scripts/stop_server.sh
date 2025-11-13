#!/bin/bash

# PM2 프로세스 중지 (있을 경우)
if command -v pm2 &> /dev/null; then
    pm2 stop all || true
    pm2 delete all || true
fi

# 포트 3000을 사용하는 프로세스 종료
PID=$(lsof -ti:3000) || true
if [ ! -z "$PID" ]; then
    kill -9 $PID || true
fi

echo "Application stopped"
