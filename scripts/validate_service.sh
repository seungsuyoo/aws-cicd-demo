#!/bin/bash

# 애플리케이션이 정상 동작하는지 확인
sleep 5

STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:3000/health)

if [ "$STATUS" -eq 200 ]; then
    echo "Validation successful"
    exit 0
else
    echo "Validation failed"
    exit 1
fi
