#!/usr/bin/env bash
# Script that generates JSON file with parameters needed to create the auth_key

if [ ! -f auth_data.json ]

then
    echo "{\"api_key\": \"YOUR_API_KEY\", \"email\": \"YOUR_EMAIL\", \"password\": \"YOUR_PASS\", \"scope\": \"checker\",\"project_id\": \"PROJECT_ID\" }" > auth_data.json

    echo -n "  -> Holberton Intranet API Key: "
    read -r api_key
    echo -n "  -> Holberton Intranet email: "
    read -r email
    echo -n "  -> Holberton Intranet password: "
    read -r password
    echo -n "  -> Holberton project id: "
    read -r project_id

    # & escaper
    password=$(sed 's/[\*\.&]/\\&/g' <<<"$password")

    if grep -q YOUR_API_KEY auth_data.json
    then
	sed -i "s/YOUR_API_KEY/$api_key/g" auth_data.json
    fi

    if grep -q YOUR_EMAIL auth_data.json
    then
	sed -i "s/YOUR_EMAIL/$email/g" auth_data.json
    fi

    if grep -q YOUR_PASS auth_data.json
    then
	sed -i "s/YOUR_PASS/$password/g" auth_data.json
    fi

    if grep -q PROJECT_ID auth_data.json
    then
	sed -i "s/PROJECT_ID/$project_id/g" auth_data.json
    fi

else
    echo "JSON Exists: Proceding..."
fi

if [ -f info.json ]
then
    rm info.json
fi

# Generate auth.token
curl -XPOST https://intranet.hbtn.io/users/auth_token.json -H "Content-Type: application/json" -d @auth_data.json >> info.json

echo "All set!"
