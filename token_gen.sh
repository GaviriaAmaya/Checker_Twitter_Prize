#!/usr/bin/env bash
# Script that sends POST request and receive API Auth_key

curl -XPOST https://intranet.hbtn.io/users/auth_token.json -H "Content-Type: application/json" -d @auth_data.json
